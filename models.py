from django.db import models

# Model Sản phẩm
class Jewelry(models.Model):
    name = models.CharField(max_length=200, unique=True)
    slug = models.SlugField(max_length=200, unique=True)
    
    # THÊM: Mô tả chi tiết sản phẩm
    description = models.TextField(blank=True) 
    # THÊM: Trường Chất liệu
    material = models.CharField(max_length=100, default='Vàng 18K/Bạc S925') 
    
    price = models.DecimalField(max_digits=10, decimal_places=0)
    stock = models.IntegerField(default=1)
    is_available = models.BooleanField(default=True)
    
    image = models.ImageField(upload_to='photos/products', blank=True)
    
    created_date = models.DateTimeField(auto_now_add=True)
    modified_date = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.name
    
    # THÊM: Hàm này giúp chuyển hướng đến trang chi tiết sản phẩm
    def get_url(self):
        # Sau này chúng ta sẽ dùng hàm này trong template
        return f'/store/{self.slug}/'

    class Meta:
        verbose_name_plural = 'Jewelries'