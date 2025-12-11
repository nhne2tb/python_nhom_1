from django.shortcuts import render

#them moi bai viet
from .models import Post

from django.http import HttpResponse
# Create your views here.

def home(request):
    return render(request, 'app/home.html')



def news_list(request):
    posts = Post.objects.all().order_by('-created_at')  # lấy tất cả bài, mới nhất trước
    return render(request, 'app/news_list.html', {'posts': posts})
