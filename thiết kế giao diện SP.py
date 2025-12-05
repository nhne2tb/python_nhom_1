{% extends 'base.html' %}
{% load static %}


{% block title %}Trang Chủ - N1 Jewelry{% endblock %}


{% block content %}
<div class="hero-section text-center py-5">
<h2>Chào mừng đến với N1 Jewelry</h2>
<p>Khám phá bộ sưu tập trang sức cao cấp.</p>
</div>


<div class="container my-5">
<h3 class="text-center mb-4">Danh Mục Sản Phẩm</h3>
<div class="row">
<!-- Category Items Placeholder -->
</div>
</div>


<div class="container my-5">
<h3 class="text-center mb-4">Sản Phẩm Mới</h3>
<div class="row">
{% for item in jewelries|slice:":4" %}
<div class="col-md-3 mb-4 text-center">
<div class="card p-3">
<img src="{{ item.image.url }}" alt="{{ item.name }}" class="img-fluid">
<h6 class="mt-2">{{ item.name }}</h6>
<p>{{ item.price }} VND</p>
</div>
</div>
{% endfor %}
</div>
</div>
{% endblock %}