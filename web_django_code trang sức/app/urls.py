from django.urls import path
from . import views

app_name = 'app'

urlpatterns = [
    path('', views.home, name='home'), 
    path('products/', views.product_list, name='product_list'), 
    path('search/', views.search, name='search'), # Đường dẫn xử lý tìm kiếm
    path('products/<slug:category_slug>/', views.product_list, name='product_list_by_category'),
    path('products/<int:id>/<slug:slug>/', views.product_detail, name='product_detail'),
    path('register/', views.register, name='register'),
    path('login/', views.login_view, name='login'),
    path('logout/', views.logout_view, name='logout'),
]