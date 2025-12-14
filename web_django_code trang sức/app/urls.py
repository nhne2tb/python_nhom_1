from django.contrib import admin
from django.urls import path
from . import views


urlpatterns = [
    # 1. Trang chủ
    path('', views.home, name='home'),
    
    # 2. Chi tiết sản phẩm (Phải đặt trước list có slug để tránh bị hiểu nhầm)
    path('<int:id>/<slug:slug>/', views.product_detail, name='product_detail'),
    
    # 3. Danh sách sản phẩm chung (Khi không chọn category nào)
    path('products/', views.product_list, name='product_list'), 
    
    # 4. Danh sách sản phẩm theo Category (URL sẽ có dạng: /nhan-kim-cuong/)
    path('<slug:category_slug>/', views.product_list, name='product_list_by_category'),
]