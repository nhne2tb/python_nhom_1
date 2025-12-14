from django.contrib import admin
# Đã sửa lỗi: Import Category và Product thay vì Post
from .models import Category, Product 

# Tùy chỉnh cách hiển thị Product trong trang Admin
class ProductAdmin(admin.ModelAdmin):
    list_display = ['name', 'slug', 'price', 'available', 'created', 'updated']
    list_filter = ['available', 'created', 'updated', 'category']
    list_editable = ['price', 'available']
    # Tự động điền Slug khi nhập Name
    prepopulated_fields = {'slug': ('name',)} 

# Tùy chỉnh cách hiển thị Category trong trang Admin
class CategoryAdmin(admin.ModelAdmin):
    list_display = ['name', 'slug']
    # Tự động điền Slug khi nhập Name
    prepopulated_fields = {'slug': ('name',)}

# Đăng ký các Model mới với Admin
admin.site.register(Category, CategoryAdmin)
admin.site.register(Product, ProductAdmin)