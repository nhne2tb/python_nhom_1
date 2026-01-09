from django.urls import path
from . import views

urlpatterns = [
    # Trang chủ
    path('', views.home_view, name='home'),
        path('search/', views.search, name='search'),



    # 🔴 TRANG CHI TIẾT BÀI VIẾT (CÓ MENU)
    path(
        '<slug:category_slug>/bai-viet/<slug:post_slug>/',
        views.post_detail_view,
        name='post_detail'
    ),

    # 🔵 TRANG DANH MỤC
    path(
        '<slug:category_slug>/',
        views.category_post_list,
        name='category_list'
    ),
]

