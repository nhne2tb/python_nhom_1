from django.shortcuts import render, get_object_or_404
from .models import Category, Product

# 🌟 VIEW HOME: Phục hồi trang chủ gốc (hiển thị home.html)
def home(request):
    return render(request, 'app/home.html') 

# View hiển thị danh sách sản phẩm
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

# View hiển thị chi tiết sản phẩm
def product_detail(request, id, slug):
    product = get_object_or_404(Product, 
                                id=id, 
                                slug=slug, 
                                available=True)
                                
    return render(request, 
                  'app/product/detail.html', 
                  {'product': product})