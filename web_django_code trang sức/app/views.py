from django.shortcuts import render, get_object_or_404, redirect
from .models import Product, Category, Cart, CartItem
from django.contrib.auth import logout
from django.contrib.auth.decorators import login_required

# 1. Trang chủ
def home(request):
    products = Product.objects.all()[:8]
    return render(request, 'app/home.html', {'products': products})

# 2. Danh sách sản phẩm
def product_list(request):
    products = Product.objects.all()
    return render(request, 'app/product/list.html', {'products': products})

# 3. CHI TIẾT SẢN PHẨM (Hàm này nãy bạn thiếu nên nó báo lỗi AttributeError đó)
def product_detail(request, id, slug):
    product = get_object_or_404(Product, id=id, slug=slug)
    return render(request, 'app/product/detail.html', {'product': product})

# 4. Tìm kiếm
def search(request):
    query = request.GET.get('search_product', '')
    products = Product.objects.filter(name__icontains=query)
    return render(request, 'app/product/search.html', {'products': products, 'query': query})

# 5. THÊM VÀO GIỎ (Hàm xử lý nút bấm)
@login_required(login_url='app:login')
def add_to_cart(request, product_id):
    product = get_object_or_404(Product, id=product_id)
    cart, created = Cart.objects.get_or_create(user=request.user)
    cart_item, created = CartItem.objects.get_or_create(cart=cart, product=product)
    if not created:
        cart_item.quantity += 1
        cart_item.save()
    return redirect('app:view_cart')

# 6. XEM GIỎ HÀNG
@login_required(login_url='app:login')
def view_cart(request):
    cart, created = Cart.objects.get_or_create(user=request.user)
    return render(request, 'app/product/cart.html', {'cart': cart})

# 7. XÓA KHỎI GIỎ
@login_required(login_url='app:login')
def remove_from_cart(request, item_id):
    item = get_object_or_404(CartItem, id=item_id, cart__user=request.user)
    item.delete()
    return redirect('app:view_cart')

# 8. Mấy trang phụ
def about(request):
    return render(request, 'app/about.html')

def contact(request):
    return render(request, 'app/contact.html')

# 9. Đăng nhập/Đăng xuất
def login_view(request):
    return render(request, 'app/login.html')

def register_view(request):
    return render(request, 'app/register.html')

def logout_view(request):
    logout(request)
    return redirect('app:home')
@login_required(login_url='app:login')
def checkout(request):
    cart = get_object_or_404(Cart, user=request.user)
    if not cart.items.exists():
        return redirect('app:home')

    if request.method == 'POST':
        # Tạo đơn hàng mới từ thông tin form
        order = Order.objects.create(
            user=request.user,
            first_name=request.POST.get('first_name'),
            last_name=request.POST.get('last_name'),
            email=request.POST.get('email'),
            address=request.POST.get('address'),
            phone=request.POST.get('phone'),
            total_price=cart.get_total_price()
        )
        # Chuyển các món từ giỏ hàng sang đơn hàng
        for item in cart.items.all():
            OrderItem.objects.create(
                order=order,
                product=item.product,
                price=item.product.price,
                quantity=item.quantity
            )
        # Xóa giỏ hàng sau khi đặt xong
        cart.items.all().delete()
        return render(request, 'app/product/order_success.html', {'order': order})

    return render(request, 'app/product/checkout.html', {'cart': cart})