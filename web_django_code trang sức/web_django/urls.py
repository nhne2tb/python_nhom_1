"""
URL configuration for web_django project.
"""
from django.contrib import admin
from django.urls import path, include

# ⬅️ PHẦN ĐÃ THÊM: Import cho MEDIA
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('app.urls')),
]

# 🌟 PHẦN ĐÃ THÊM: Cấu hình MEDIA (Phải thêm để hiển thị ảnh sản phẩm) 🌟
# Chỉ phục vụ file media khi ở chế độ DEBUG (môi trường phát triển)
if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)