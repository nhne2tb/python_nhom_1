# app/admin.py

from django.contrib import admin
from .models import MenuItem, Tag, Post , Banner
from django.utils.safestring import mark_safe 
# Cần import mark_safe để hiển thị preview ảnh

# --- 1. Đăng ký MenuItem (Danh mục) ---
@admin.register(MenuItem)
class MenuItemAdmin(admin.ModelAdmin):
    list_display = ('name', 'url_slug', 'order', 'is_published')
    list_editable = ('url_slug', 'order', 'is_published')
    ordering = ('order',)
    
# --- 2. Đăng ký Tag (Thẻ) ---
@admin.register(Tag)
class TagAdmin(admin.ModelAdmin):
    list_display = ('name', 'slug')
    # Tag dùng trường 'name' để tạo slug
    prepopulated_fields = {'slug': ('name',)} 
    search_fields = ('name',)

# --- 3. Đăng ký Post (Bài viết) ---
@admin.register(Post)
class PostAdmin(admin.ModelAdmin):
    
    # Hàm hiển thị preview ảnh
    def image_tag(self, obj):
        if obj.image and obj.image.url:
            return mark_safe(f'<img src="{obj.image.url}" style="max-width: 150px; height: auto;" />')
        return "Không có ảnh"
    image_tag.short_description = 'Preview Ảnh'
    
    list_display = (
        'title', 
        'category',         
        'created_at',   
        'is_published',     
    )
    
    list_editable = ('is_published',)
    list_filter = ('category', 'is_published', 'tags')
    search_fields = ('title', 'content', 'summary')
    
    # Post dùng trường 'title' để tạo slug
    prepopulated_fields = {'slug': ('title',)} 
    
    fieldsets = (
        ('Thông tin cơ bản', {
            'fields': ('title', 'slug', 'category', 'tags')
        }),
        ('Nội dung & Ảnh', {
            # Thêm 'image_tag' để xem trước ảnh
            'fields': ('summary', 'content', 'image', 'image_tag'), 
        }),
        ('Trạng thái', {
            'fields': ('is_published',),
        }),
    )
    # image_tag là trường chỉ đọc
    readonly_fields = ['image_tag']


    #quan cáo theo tung thẻ 

@admin.register(Banner)
class BannerAdmin(admin.ModelAdmin):
    list_display = ('menu', 'title', 'order', 'is_active')
    list_filter = ('menu', 'is_active')
    ordering = ('menu', 'order')


