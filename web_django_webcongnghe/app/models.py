from django.db import models
from django.utils.text import slugify
from django.contrib.auth.models import User


from ckeditor_uploader.fields import RichTextUploadingField




# import os
# from uuid import uuid4

# def banner_upload_path(instance, filename):
#     ext = filename.split('.')[-1]
#     filename = f"{uuid4().hex}.{ext}"

#     # LƯU FILE THỰC TẾ vào static
#     return os.path.join(
#         'app/static/images/banners',
#         filename
#     )


# =====================================================
# 1. MENU ITEM
# =====================================================
class MenuItem(models.Model):
    name = models.CharField(max_length=200)
    url_slug = models.CharField(max_length=200, unique=True)
    order = models.PositiveIntegerField(default=0, db_index=True)
    is_published = models.BooleanField(default=True)

    class Meta:
        ordering = ['order']
        verbose_name = "Danh mục"
        verbose_name_plural = "Các danh mục"

    def __str__(self):
        return self.name


# =====================================================
# 2. TAG
# =====================================================
class Tag(models.Model):
    name = models.CharField(max_length=100, unique=True)
    slug = models.SlugField(max_length=100, unique=True)

    def save(self, *args, **kwargs):
        if not self.slug:
            self.slug = slugify(self.name)
        super().save(*args, **kwargs)

    def __str__(self):
        return self.name

# =====================================================
# 3. POST
# =====================================================
class Post(models.Model):
    category = models.ForeignKey(
        MenuItem,
        on_delete=models.SET_NULL,
        null=True,
        related_name="posts"
    )

    tags = models.ManyToManyField(Tag, blank=True)

    title = models.CharField(max_length=255)
    slug = models.SlugField(max_length=255, unique=True)

    # ✅ ẢNH BÀI VIẾT (UPLOAD)
    image = models.ImageField(
        upload_to="images/posts/",
        blank=True,
        null=True,
        verbose_name="Ảnh bài viết"
    )

    summary = models.TextField(max_length=500)
    # content = models.TextField()
    content = RichTextUploadingField()


    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    is_published = models.BooleanField(default=False)

    def save(self, *args, **kwargs):
        if not self.slug:
            from unidecode import unidecode
            self.slug = slugify(unidecode(self.title))
        super().save(*args, **kwargs)

    def __str__(self):
        return self.title



# =====================================================
# 4. BANNER
# =====================================================
class Banner(models.Model):
    menu = models.ForeignKey(
        MenuItem,
        on_delete=models.CASCADE,
        related_name="banners"
    )

    title = models.CharField(max_length=200, blank=True)
    description = models.CharField(max_length=300, blank=True)

    # ✅ UPLOAD ẢNH
    image = models.ImageField(
        
        upload_to="images/banners/",
        verbose_name="Ảnh banner"
    )

    order = models.PositiveIntegerField(default=0)
    is_active = models.BooleanField(default=True)

    class Meta:
        ordering = ['order']

    def __str__(self):
        return f"{self.menu.name} - {self.title}"

# class Banner(models.Model):
#     menu = models.ForeignKey(
#         MenuItem,
#         on_delete=models.CASCADE,
#         related_name="banners"
#     )

#     title = models.CharField(max_length=200, blank=True)
#     description = models.CharField(max_length=300, blank=True)

#     image = models.ImageField(
#         upload_to=banner_upload_path,
#         verbose_name="Ảnh banner"
#     )

#     order = models.PositiveIntegerField(default=0)
#     is_active = models.BooleanField(default=True)

#     class Meta:
#         ordering = ['order']

#     def save(self, *args, **kwargs):
#         if self.image:
#             self.image.name = self.image.name.replace('app/static/', '')
#         super().save(*args, **kwargs)

#     def __str__(self):
#         return f"{self.menu.name} - {self.title}"

