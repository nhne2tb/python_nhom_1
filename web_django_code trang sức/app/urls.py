from django.urls import path
from . import views

app_name = 'app'

urlpatterns = [
    # 🌟 URL gốc trỏ về trang chủ đẹp
    path('', views.home, name='home'), 
    
    # Danh sách sản phẩm chuyển sang /products/
    path('products/', views.product_list, name='product_list'), 
    
    path('products/<slug:category_slug>/', views.product_list, name='product_list_by_category'),
    
    path('products/<int:id>/<slug:slug>/', views.product_detail, name='product_detail'),
]