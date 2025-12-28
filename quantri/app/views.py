import json
import os
from django.shortcuts import render
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