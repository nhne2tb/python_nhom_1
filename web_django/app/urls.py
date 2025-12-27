# app/urls.py
from django.urls import path
from . import views

urlpatterns = [
    # Trang chủ
    path('', views.home_view, name='home'),

    # Trang danh mục (dùng chung news_menu.html)
    path('<slug:category_slug>/', views.category_post_list, name='category_list'),

    # (Sau này thêm)
    # path('post/<slug:slug>/', views.post_detail_view, name='post_detail'),
]
