from django.shortcuts import render, get_object_or_404
from .models import Post, MenuItem, Banner

from django.db.models import Q


def search(request):
    query = request.GET.get('q', '').strip()

    category_posts = []

    if query:
        menus = MenuItem.objects.filter(is_published=True).order_by('order')

        for menu in menus:
            posts = Post.objects.filter(
                category=menu,
                is_published=True
            ).filter(
                Q(title__icontains=query) |
                Q(summary__icontains=query)
            ).order_by('-created_at')

            if posts.exists():
                category_posts.append({
                    'category': menu,
                    'posts': posts
                })

    return render(request, 'app/search_results.html', {
        'query': query,
        'category_posts': category_posts,
        'main_menu_items': get_main_menu_items(),
        'current_menu_slug': None,
    })



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
# def category_post_list(request, category_slug):

#     # 1. Menu hiện tại
#     current_category = get_object_or_404(
#         MenuItem,
#         url_slug=category_slug,
#         is_published=True
#     )

#     # 2. Bài viết theo menu
#     posts = Post.objects.filter(
#         category=current_category,
#         is_published=True
#     ).order_by('-created_at')

#     # 3. Banner theo menu
#     banners = Banner.objects.filter(
#         menu=current_category,
#         is_active=True
#     ).order_by('order')

#     # 4. Render
#     context = {
#         'current_category': current_category,
#         'posts': posts,
#         'banners': banners,
#         'main_menu_items': get_main_menu_items(),
#     }

#     return render(request, 'app/news_menu.html', context)


def category_post_list(request, category_slug):

    # ===== TRANG CHỦ =====
    if category_slug == 'trang-chu':

        menus = MenuItem.objects.filter(is_published=True).order_by('order')
        category_posts = []

        for menu in menus:
            posts = Post.objects.filter(
                category=menu,
                is_published=True
            ).order_by('-created_at')[:3]

            if posts.exists():
                category_posts.append({
                    'category': menu,
                    'posts': posts
                })

        banners = Banner.objects.filter(
            menu__url_slug='trang-chu',
            is_active=True
        ).order_by('order')

        return render(request, 'app/news_menu.html', {
            'is_home': True,
                'current_menu_slug': 'trang-chu',   # ⭐ BẮT BUỘC

            'category_posts': category_posts,
            'banners': banners,
            'main_menu_items': get_main_menu_items(),
        })

    # ===== TRANG DANH MỤC =====
    current_category = get_object_or_404(
        MenuItem,
        url_slug=category_slug,
        is_published=True
    )

    posts = Post.objects.filter(
        category=current_category,
        is_published=True
    ).order_by('-created_at')

    banners = Banner.objects.filter(
        menu=current_category,
        is_active=True
    ).order_by('order')

    return render(request, 'app/news_menu.html', {
        'is_home': False,
        
        'current_category': current_category,
                'current_menu_slug': current_category.url_slug,  # ⭐

        'posts': posts,
        
        'banners': banners,
        'main_menu_items': get_main_menu_items(),
    })

    # ===============================
# CHI TIẾT BÀI VIẾT
# ===============================
# def post_detail_view(request, slug):
def post_detail_view(request, category_slug, post_slug):

    """
    Trang chi tiết bài viết
    """

    # 1. Lấy bài viết theo slug
    post = get_object_or_404(
        Post,
        slug=post_slug,
        is_published=True
    )

    # 2. Render trang chi tiết
    context = {
        'post': post,
                'current_menu_slug': category_slug,  # ⭐ CỰC KỲ QUAN TRỌNG

        'main_menu_items': get_main_menu_items(),
    }

    return render(request, 'app/post_detail.html', context)






