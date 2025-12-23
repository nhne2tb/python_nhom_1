from django.db import models
from django.contrib.auth.models import User
from django.db.models import Index 

# 1. Danh mục
class Category(models.Model):
    name = models.CharField(max_length=200, db_index=True)
    slug = models.SlugField(max_length=200, unique=True)
    class Meta:
        verbose_name_plural = 'N1-JEWELRY - Danh mục'
    def __str__(self): return self.name

# 2. Sản phẩm
class Product(models.Model):
    category = models.ForeignKey(Category, related_name='products', on_delete=models.CASCADE)
    name = models.CharField(max_length=200, db_index=True)
    slug = models.SlugField(max_length=200, db_index=True)
    material = models.CharField(max_length=100, default='Vàng 18K')
    gemstone = models.CharField(max_length=100, blank=True, null=True)
    size_weight = models.CharField(max_length=100, default='1.0 Carat')
    image = models.ImageField(upload_to='products/%Y/%m/%d', blank=True)
    description = models.TextField(blank=True)
    price = models.DecimalField(max_digits=15, decimal_places=2)
    available = models.BooleanField(default=True)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    class Meta:
        indexes = [Index(fields=['id', 'slug'])]
        verbose_name_plural = 'N1-JEWELRY - Sản phẩm'
    def __str__(self): return self.name

# 3. Giỏ hàng
class Cart(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    created_at = models.DateTimeField(auto_now_add=True)
    def get_total_price(self):
        return sum(item.get_cost() for item in self.items.all())

class CartItem(models.Model):
    cart = models.ForeignKey(Cart, related_name='items', on_delete=models.CASCADE)
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    quantity = models.PositiveIntegerField(default=1)
    def get_cost(self):
        return self.product.price * self.quantity

# 4. Đơn hàng (Đã dọn dẹp phần lặp lại)
class Order(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    first_name = models.CharField(max_length=50)
    last_name = models.CharField(max_length=50)
    email = models.EmailField()
    address = models.CharField(max_length=250)
    phone = models.CharField(max_length=20)
    created = models.DateTimeField(auto_now_add=True)
    total_price = models.DecimalField(max_digits=15, decimal_places=2)
    paid = models.BooleanField(default=False)

    class Meta:
        ordering = ['-created']
        verbose_name_plural = 'N1-JEWELRY - Đơn hàng'
    
    def __str__(self):
        return f'Đơn hàng {self.id}'

class OrderItem(models.Model):
    order = models.ForeignKey(Order, related_name='items', on_delete=models.CASCADE)
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    price = models.DecimalField(max_digits=15, decimal_places=2)
    quantity = models.PositiveIntegerField(default=1)

    def get_cost(self):
        return self.price * self.quantity