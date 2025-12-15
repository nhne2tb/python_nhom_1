from django.shortcuts import render, get_object_or_404
from .models import Category, Product

# 🌟 VIEW HOME ĐÃ SỬA: Lấy dữ liệu sản phẩm
def home(request):
    # Lấy 8 sản phẩm mới nhất để hiển thị trên trang chủ
    products = Product.objects.filter(available=True).order_by('-created')[:8] 
    
    context = {
        'products': products
    }
    return render(request, 'app/home.html', context) 

# View hiển thị danh sách sản phẩm (Giữ nguyên)
def product_list(request, category_slug=None):
    category = None
    categories = Category.objects.all()
    products = Product.objects.filter(available=True)
    
    if category_slug:
        category = get_object_or_404(Category, slug=category_slug)
        products = products.filter(category=category)
        
    return render(request, 
                  'app/product/list.html', 
                  {
                      'category': category,
                      'categories': categories,
                      'products': products
                  })

# View hiển thị chi tiết sản phẩm (Giữ nguyên)
def product_detail(request, id, slug):
    product = get_object_or_404(Product, 
                                 id=id, 
                                 slug=slug, 
                                 available=True)
                                 
    return render(request, 
                  'app/product/detail.html', 
                  {'product': product})