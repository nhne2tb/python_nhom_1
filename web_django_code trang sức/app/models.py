from django.db import models
from django.db.models import Index 

# Model Category (Danh mục Trang sức)
class Category(models.Model):
    name = models.CharField(max_length=200, db_index=True)
    slug = models.SlugField(max_length=200, unique=True)

    class Meta:
        verbose_name = 'danh mục'
        verbose_name_plural = 'N1-JEWELRY - Danh mục Sản phẩm' 
        ordering = ('name',)

    def __str__(self):
        return self.name

# Model Product (Sản phẩm Trang sức)
class Product(models.Model):
    category = models.ForeignKey(Category, related_name='products', on_delete=models.CASCADE)
    
    name = models.CharField(max_length=200, db_index=True)
    slug = models.SlugField(max_length=200, db_index=True)
    
    material = models.CharField(
        max_length=100, 
        default='Vàng 18K', 
        help_text='Chất liệu chính (Vàng, Bạc, Bạch Kim)'
    )
    gemstone = models.CharField(
        max_length=100, 
        blank=True, 
        null=True, 
        help_text='Loại đá quý đính kèm (Kim Cương, Ruby, Ngọc trai)'
    )
    size_weight = models.CharField(
        max_length=100, 
        help_text='Kích thước, Carat hoặc trọng lượng', 
        default='1.0 Carat'
    )
    
    image = models.ImageField(upload_to='products/%Y/%m/%d', blank=True)
    description = models.TextField(blank=True)
    price = models.DecimalField(max_digits=10, decimal_places=2)
    available = models.BooleanField(default=True)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    class Meta:
        ordering = ('name',)
        verbose_name = 'sản phẩm'
        verbose_name_plural = 'N1-JEWELRY - Sản phẩm'
        indexes = [
            Index(fields=['id', 'slug']),
        ]

    def __str__(self):
        return self.name