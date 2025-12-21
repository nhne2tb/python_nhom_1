from django.contrib import admin
from .models import Category, Product, Order, OrderItem

# 1. Đăng ký Category
@admin.register(Category)
class CategoryAdmin(admin.ModelAdmin):
    list_display = ['name', 'slug']
    prepopulated_fields = {'slug': ('name',)}

# 2. Cấu hình để hiện các món hàng ngay trong chi tiết đơn hàng
class OrderItemInline(admin.TabularInline):
    model = OrderItem
    raw_id_fields = ['product']
    extra = 0 # Không hiện dòng trống thừa

# 3. Đăng ký Product
@admin.register(Product)
class ProductAdmin(admin.ModelAdmin):
    list_display = ['name', 'category', 'price', 'available', 'created']
    list_filter = ['available', 'created', 'updated', 'category']
    list_editable = ['price', 'available']
    prepopulated_fields = {'slug': ('name',)}

# 4. Đăng ký Order (Quản lý đơn hàng khách đặt)
@admin.register(Order)
class OrderAdmin(admin.ModelAdmin):
    # Hiển thị các cột thông tin khách hàng ra danh sách
    list_display = ['id', 'first_name', 'last_name', 'email', 'phone', 'address', 'total_price', 'paid', 'created']
    # Bộ lọc bên phải để tìm đơn hàng nhanh
    list_filter = ['paid', 'created', 'updated'] if hasattr(Order, 'updated') else ['paid', 'created']
    # Cho phép tích chọn "Đã thanh toán" ngay bên ngoài danh sách
    list_editable = ['paid']
    # Chèn danh sách sản phẩm khách mua vào trong trang chi tiết đơn hàng
    inlines = [OrderItemInline]