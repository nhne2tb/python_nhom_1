from django.shortcuts import render, get_object_or_404
from .models import Post, MenuItem, Banner


# ===============================
# HÀM HỖ TRỢ: MENU
# ===============================
def get_main_menu_items():
    return MenuItem.objects.filter(is_published=True).order_by('order')


# ===============================
# TRANG CHỦ
# ===============================
def home_view(request):
    latest_posts = Post.objects.filter(
        is_published=True
    ).order_by('-created_at')[:6]

    context = {
        'latest_posts': latest_posts,
        'main_menu_items': get_main_menu_items(),
    }
    return render(request, 'app/home.html', context)


# ===============================
# DANH MỤC + BÀI VIẾT + BANNER
# ===============================
def category_post_list(request, category_slug):

    # 1. Menu hiện tại
    current_category = get_object_or_404(
        MenuItem,
        url_slug=category_slug,
        is_published=True
    )

    # 2. Bài viết theo menu
    posts = Post.objects.filter(
        category=current_category,
        is_published=True
    ).order_by('-created_at')

    # 3. Banner theo menu
    banners = Banner.objects.filter(
        menu=current_category,
        is_active=True
    ).order_by('order')

    # 4. Render
    context = {
        'current_category': current_category,
        'posts': posts,
        'banners': banners,
        'main_menu_items': get_main_menu_items(),
    }

    return render(request, 'app/news_menu.html', context)
