from django.shortcuts import render, get_object_or_404
from django.http import HttpResponse

# Đã thay đổi: Nhập Category và Product
from .models import Category, Product 


def home(request):
    # Trang chủ: có thể hiển thị một vài sản phẩm nổi bật
    products = Product.objects.filter(available=True)[:4] # Lấy 4 sản phẩm mới nhất
    context = {
        'products': products
    }
    return render(request, 'app/home.html', context)


# Hàm hiển thị danh sách sản phẩm và lọc theo danh mục
def product_list(request, category_slug=None):
    
    category = None
    # Lấy tất cả danh mục để hiển thị sidebar/menu
    categories = Category.objects.all() 
    
    # Lấy tất cả sản phẩm đang available
    products = Product.objects.filter(available=True) 

    # Nếu có slug (tên danh mục) trên URL, thực hiện lọc
    if category_slug:
        # Lấy category đó, nếu không có sẽ báo lỗi 404
        category = get_object_or_404(Category, slug=category_slug) 
        # Lọc sản phẩm theo category
        products = products.filter(category=category)

    context = {
        'category': category,
        'categories': categories, 
        'products': products
    }
    # CHÚ Ý: Đảm bảo bạn có tệp template tên là 'app/product_list.html'
    return render(request, 'app/product_list.html', context)


# Hàm hiển thị chi tiết sản phẩm
def product_detail(request, id, slug):
    # Lấy sản phẩm dựa trên ID và Slug
    product = get_object_or_404(Product, id=id, slug=slug, available=True)
    
    context = {
        'product': product
    }
    # CHÚ Ý: Đảm bảo bạn có tệp template tên là 'app/product_detail.html'
    return render(request, 'app/product_detail.html', context)