from django.shortcuts import render, get_object_or_404, redirect
from .models import Product, Category, Cart, CartItem
from django.contrib.auth import logout, login, authenticate
from django.contrib.auth.decorators import login_required
from django.contrib import messages

# 1. Trang chủ
def home(request):
    products = Product.objects.all().order_by('-id')[:8]
    return render(request, 'app/home.html', {'products': products})

# 2. Danh sách sản phẩm & Bộ lọc
def product_list(request):
    products = Product.objects.all()

    material = request.GET.get('material')
    price_range = request.GET.get('price')
    category_slug = request.GET.get('category')

    if category_slug:
        products = products.filter(category__slug=category_slug)
    
    if material:
        if material == 'vang':
            products = products.filter(material__icontains='Vàng')
        elif material == 'kim-cuong':
            products = products.filter(material__icontains='Kim cương')
        else:
            products = products.filter(material__icontains=material)

    if price_range:
        if price_range == 'duoi-10':
            products = products.filter(price__lt=10000000)
        elif price_range == '10-100':
            products = products.filter(price__gte=10000000, price__lte=100000000)
        elif price_range == 'tren-100':
            products = products.filter(price__gt=100000000)

    return render(request, 'app/product/list.html', {'products': products})

# 3. Chi tiết sản phẩm
def product_detail(request, id, slug):
    product = get_object_or_404(Product, id=id, slug=slug)
    return render(request, 'app/product/detail.html', {'product': product})

# 4. Tìm kiếm
def search(request):
    query = request.GET.get('search_product', '')
    products = Product.objects.filter(name__icontains=query)
    return render(request, 'app/product/search.html', {'products': products, 'query': query})

# 5. Giỏ hàng
@login_required(login_url='app:login')
def add_to_cart(request, product_id):
    product = get_object_or_404(Product, id=product_id)
    cart, created = Cart.objects.get_or_create(user=request.user)
    cart_item, created = CartItem.objects.get_or_create(cart=cart, product=product)
    if not created:
        cart_item.quantity += 1
        cart_item.save()
    return redirect('app:view_cart')

@login_required(login_url='app:login')
def view_cart(request):
    cart, created = Cart.objects.get_or_create(user=request.user)
    return render(request, 'app/product/cart.html', {'cart': cart})

@login_required(login_url='app:login')
def remove_from_cart(request, item_id):
    item = get_object_or_404(CartItem, id=item_id, cart__user=request.user)
    item.delete()
    return redirect('app:view_cart')

# 6. Thanh toán
@login_required(login_url='app:login')
def checkout(request):
    cart = get_object_or_404(Cart, user=request.user)
    return render(request, 'app/product/checkout.html', {'cart': cart})

# 7. ĐĂNG NHẬP (Hàm này bị thiếu lúc nãy)
def login_view(request):
    return render(request, 'app/login.html')

# 8. ĐĂNG KÝ (Hàm này bị thiếu lúc nãy)
def register_view(request):
    return render(request, 'app/register.html')

# 9. ĐĂNG XUẤT
def logout_view(request):
    logout(request)
    return redirect('app:home')

# 10. Khác
def about(request):
    return render(request, 'app/about.html')

def contact(request):
    return render(request, 'app/contact.html')