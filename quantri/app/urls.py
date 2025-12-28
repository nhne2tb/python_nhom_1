from django.urls import path
from . import views
urlpatterns = [
    path('', views.home, name='home'),
    path('quantri/', views.quantri_khachhang, name='quantri_khachhang'), 
    path('xoa-khach-hang/<int:customer_id>/', views.xoa_khachhang, name='xoa_khachhang'),
    path('sua-khach-hang/<int:customer_id>/', views.sua_khachhang, name='sua_khachhang'),
    ]