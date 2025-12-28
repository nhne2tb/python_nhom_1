import json
import os
from django.shortcuts import render, redirect, get_object_or_404
from django.conf import settings

def home(request):
    # Đường dẫn đến file data.json
    file_path = os.path.join(settings.BASE_DIR, 'data.json')
    
    # Đọc dữ liệu từ file
    with open(file_path, 'r', encoding='utf-8') as f:
        data = json.load(f)

    # Truyền dữ liệu vào giao diện
    context = {
        'khach_hang': data['stats']['khach_hang'],
        'san_pham_da_ban': data['stats']['san_pham_da_ban'],
        'don_hang': data['stats']['don_hang'],
        'doanh_thu': data['stats']['doanh_thu'],
        'chart_labels': [item['month'] for item in data['chart_data']],
        'chart_values': [item['revenue'] for item in data['chart_data']],
    }
    
    return render(request, 'app/home.html', context)
def quantri_khachhang(request):
    # Bước 1: Lấy đường dẫn file
    file_path = os.path.join(settings.BASE_DIR, 'data.json')
    
    # Bước 2: Đọc file (Chỉ cần mở file 1 lần duy nhất)
    with open(file_path, 'r', encoding='utf-8') as f:
        data = json.load(f)
    
    # Bước 3: Gộp dữ liệu vào context
    # Mình lấy dữ liệu từ khóa 'quantri' trong JSON và đặt tên là 'danh_sach_khach' để dùng bên HTML
    context = {
        'danh_sach_khach': data.get('quantri', []) 
    }
    
    return render(request, 'app/quantri_khachhang.html', context)

def xoa_khachhang(request, customer_id):
    file_path = os.path.join(settings.BASE_DIR, 'data.json')
    
    # Đọc dữ liệu
    with open(file_path, 'r', encoding='utf-8') as f:
        data = json.load(f)
    
    # Lọc bỏ khách hàng có ID trùng với ID truyền vào
    data['quantri'] = [k for k in data['quantri'] if k['id'] != customer_id]
    
    # Lưu lại file
    with open(file_path, 'w', encoding='utf-8') as f:
        json.dump(data, f, indent=4, ensure_ascii=False)
        
    # Xóa xong thì nhảy về lại trang quản trị
    return redirect('quantri_khachhang')

def sua_khachhang(request, customer_id):
    file_path = os.path.join(settings.BASE_DIR, 'data.json')
    
    # 1. Đọc dữ liệu từ file JSON
    with open(file_path, 'r', encoding='utf-8') as f:
        data = json.load(f)

    # 2. Tìm khách hàng cần sửa dựa trên ID
    khach_hang = next((k for k in data['quantri'] if k['id'] == customer_id), None)

    # 3. Nếu người dùng nhấn nút "Lưu" (Gửi dữ liệu lên)
    if request.method == "POST":
        khach_hang['name'] = request.POST.get('name')
        khach_hang['phone'] = request.POST.get('phone')
        khach_hang['email'] = request.POST.get('email')
        khach_hang['total_spent'] = request.POST.get('total_spent')
        khach_hang['status'] = request.POST.get('status')

        # Ghi đè lại vào file JSON
        with open(file_path, 'w', encoding='utf-8') as f:
            json.dump(data, f, indent=4, ensure_ascii=False)
        
        return redirect('quantri_khachhang')

    # 4. Nếu chỉ là mở trang sửa, hiện Form kèm thông tin cũ
    return render(request, 'app/sua_khachhang.html', {'khach': khach_hang})
