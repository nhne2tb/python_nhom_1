from django.apps import AppConfig

class AppConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'app'
    verbose_name = 'Quản trị N1-Jewelry' # Tên hiển thị đẹp mắt trong trang Admin