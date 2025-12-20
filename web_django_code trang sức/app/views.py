from django.shortcuts import render, get_object_or_404, redirect
from .models import Product
from django.contrib.auth import logout

# Trang chủ
def home(request):
    products = Product.objects.all()[:8]
    return render(request, 'app/home.html', {'products': products})

# Danh sách sản phẩm & Tìm kiếm
def product_list(request):
    products = Product.objects.all()
    return render(request, 'app/product/list.html', {'products': products})

def search(request):
    query = request.GET.get('search_product', '')
    products = Product.objects.filter(name__icontains=query)
    return render(request, 'app/product/search.html', {'products': products, 'query': query})

# Chi tiết sản phẩm
def product_detail(request, id, slug):
    product = get_object_or_404(Product, id=id, slug=slug)
    return render(request, 'app/product/detail.html', {'product': product})

# Trang tĩnh
def about(request):
    return render(request, 'app/about.html')

def contact(request):
    return render(request, 'app/contact.html')

# Tài khoản (Login/Register/Logout)
def login_view(request):
    return render(request, 'app/login.html')

def register_view(request):
    return render(request, 'app/register.html')

def logout_view(request):
    logout(request)
    return redirect('app:home')