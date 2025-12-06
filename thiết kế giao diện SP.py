{% extends 'base.html' %} 
{% load static %}

{% block title %}Trang Chủ Cửa Hàng - N1 Jewelry{% endblock %}

{% block content %}

<div class="hero-section text-center py-5" style="background-color: #f8f8f8;">
    <div class="container">
        <img src="{% static 'images/banner.jpg' %}" 
             alt="Banner Trang Sức" class="img-fluid rounded shadow-sm mb-4">
        
        <h2 class="text-primary-custom">Khám phá vẻ đẹp vĩnh cửu cùng N1</h2>
        <p class="lead">Bộ sưu tập trang sức ngọc trai và kim cương tinh tế.</p>
        <a href="{% url 'store' %}" class="btn btn-primary-custom btn-lg mt-2">MUA SẮM NGAY</a>
    </div>
</div>

<div class="container my-5">
    <h3 class="text-center mb-5">KHÁM PHÁ CÁC DANH MỤC</h3>
    <div class="row">
        
        <div class="col-md-4 mb-4">
            <div class="card h-100 border-0 shadow-sm category-card">
                <img src="{% static 'images/pearl.jpg' %}" 
                     alt="Trang sức Ngọc Trai" class="card-img-top">
                <div class="card-body text-center">
                    <h5 class="card-title">TRANG SỨC NGỌC TRAI</h5>
                    <p class="card-text text-muted small mt-2">Trang sức ngọc trai giá **45.000.000đ** mang nét đẹp thanh lịch, sang trọng và tinh tế, phù hợp cho phái nữ yêu thích sự quý phái.</p>
                </div>
            </div>
        </div>
        
        <div class="col-md-4 mb-4">
            <div class="card h-100 border-0 shadow-sm category-card">
                <img src="{% static 'images/wedding.jpg' %}" 
                     alt="Nhẫn Kim Cương" class="card-img-top">
                <div class="card-body text-center">
                    <h5 class="card-title">NHẪN CƯỚI & KIM CƯƠNG</h5>
                    <p class="card-text text-muted small mt-2">Nhẫn cưới đính kim cương giá **120.000.000đ** mang vẻ đẹp sang trọng, bền vững và đầy ý nghĩa, khẳng định tình yêu bằng một biểu tượng đẳng cấp.</p>
                </div>
            </div>
        </div>
        
        <div class="col-md-4 mb-4">
            <div class="card h-100 border-0 shadow-sm category-card">
                <img src="{% static 'images/handmade.jpg' %}" 
                     alt="Bông Tai Handmade" class="card-img-top">
                <div class="card-body text-center">
                    <h5 class="card-title">HANDMADE JEWELRY</h5>
                    <p class="card-text text-muted small mt-2">Handmade Jewelry – Vòng tay giá **15.999.999đ** mang phong cách thủ công tinh xảo, tạo nên nét độc đáo và khác biệt cho người đeo.</p>
                </div>
            </div>
        </div>
        
    </div>
</div>

<div class="container my-5">
    <h3 class="text-center mb-5">SẢN PHẨM MỚI NHẤT</h3>
    
    <div class="row">
        
        {% for item in jewelries|slice:":4" %}
        <div class="col-lg-3 col-md-6 mb-4">
            <div class="card h-100 text-center border-0 shadow-sm product-card-sm">
                
                {% if item.image %}
                <img src="{{ item.image.url }}" class="card-img-top p-3" alt="{{ item.name }}" style="object-fit: contain; height: 200px;">
                {% else %}
                <img src="{% static 'css/default_jewelry.jpg' %}" class="card-img-top p-3" alt="No Image" style="object-fit: contain; height: 200px;"> 
                {% endif %}
                
                <div class="card-body pt-0">
                    <h6 class="card-title fw-normal">{{ item.name }}</h6>
                    <p class="card-text text-primary-custom fw-bold fs-6">{{ item.price }} VND</p>
                    
                    <a href="{% url 'add_cart' item.id %}" class="btn btn-primary-custom btn-sm">Thêm vào Giỏ</a>
                    
                    <a href="{{ item.get_url }}" class="btn btn-outline-dark btn-sm">Chi tiết</a>
                </div>
            </div>
        </div>
        {% empty %}
        <p class="text-center">Chưa có sản phẩm nào. Vui lòng thêm sản phẩm qua trang <a href="{% url 'admin:store_jewelry_changelist' %}">Admin</a>.</p>
        {% endfor %}
        
    </div>
</div>
{% endblock %}