from django.apps import AppConfig


class AppConfig(AppConfig):
    name = 'app'

class ContentMarketingConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'content_marketing'
    verbose_name = 'Quantri'  # Thay đổi tên hiển thị tại đây