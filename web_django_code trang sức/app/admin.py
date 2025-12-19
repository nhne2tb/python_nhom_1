from django.contrib import admin
from .models import Category, Product # ⬅️ Đảm bảo đã import cả hai Model

# Đăng ký Category Model
@admin.register(Category)
class CategoryAdmin(admin.ModelAdmin):
    list_display = ['name', 'slug']
    prepopulated_fields = {'slug': ('name',)} # Tự động điền slug

# Đăng ký Product Model
@admin.register(Product)
class ProductAdmin(admin.ModelAdmin):
    list_display = ['name', 'slug', 'price', 'available', 'created', 'updated']
    list_filter = ['available', 'created', 'updated']
    list_editable = ['price', 'available'] # Cho phép chỉnh sửa trực tiếp từ list view
    prepopulated_fields = {'slug': ('name',)}