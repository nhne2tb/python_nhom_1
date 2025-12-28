from django.shortcuts import render
from .models import MonthlyRevenue

def home(request):
    # Dữ liệu giả lập khớp với hình của bạn
    context = {
        'khach_hang': "1,245",
        'san_pham_da_ban': "356",
        'don_hang': "412",
        'doanh_thu': "980",
        'chart_data': [
            {'label': 'T1', 'value': 120},
            {'label': 'T2', 'value': 200},
            {'label': 'T3', 'value': 150},
            {'label': 'T4', 'value': 280},
        ]
    }
    return render(request, 'app/home.html', context)