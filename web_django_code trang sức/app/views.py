from django.shortcuts import render, get_object_or_404
from .models import Category, Product
from django.db.models import Q # Để tìm kiếm nâng cao

# View Trang chủ
def home(request):
    products = Product.objects.filter(available=True).order_by('-created')[:8] 
    context = {'products': products}
    return render(request, 'app/home.html', context) 

# View Tìm kiếm sản phẩm
def search(request):
    query = request.GET.get('search_product') # Lấy từ khóa từ thanh địa chỉ
    results = []
    if query:
        # Tìm sản phẩm có tên hoặc mô tả chứa từ khóa
        results = Product.objects.filter(
            Q(name__icontains=query) | Q(description__icontains=query),
            available=True
        )
    return render(request, 'app/product/search.html', {
        'query': query,
        'products': results
    })

# View Danh sách sản phẩm
def product_list(request, category_slug=None):
    category = None
    categories = Category.objects.all()
    products = Product.objects.filter(available=True)
    if category_slug:
        category = get_object_or_404(Category, slug=category_slug)
        products = products.filter(category=category)
    return render(request, 'app/product/list.html', {
        'category': category,
        'categories': categories,
        'products': products
    })

# View Chi tiết sản phẩm
def product_detail(request, id, slug):
    product = get_object_or_404(Product, id=id, slug=slug, available=True)
    return render(request, 'app/product/detail.html', {'product': product})

# View Đăng ký
def register(request):
    form = CreateUserForm()
    if request.method == 'POST':
        form = CreateUserForm(request.POST)
        if form.is_valid():
            form.save()
            messages.success(request, "Đăng ký thành công! Hãy đăng nhập.")
            return redirect('app:login')
    return render(request, 'app/register.html', {'form': form})

# View Đăng nhập
def login_view(request):
    if request.method == 'POST':
        form = AuthenticationForm(request, data=request.POST)
        if form.is_valid():
            username = form.cleaned_data.get('username')
            password = form.cleaned_data.get('password')
            user = authenticate(username=username, password=password)
            if user is not None:
                login(request, user)
                return redirect('app:home')
    else:
        form = AuthenticationForm()
    return render(request, 'app/login.html', {'form': form})

# View Đăng xuất
def logout_view(request):
    logout(request)
    return redirect('app:home')