from .models import CartItem, Cart

def cart_count(request):
    count = 0
    if request.user.is_authenticated:
        try:
            # Tìm giỏ hàng của người dùng mà chưa thanh toán
            # Giả sử trong model CartItem, trường liên kết tới Cart tên là 'cart'
            # Và model Cart có trường 'user'
            cart = Cart.objects.filter(user=request.user).first()
            if cart:
                # Đếm tổng số lượng item có trong giỏ hàng đó
                items = CartItem.objects.filter(cart=cart)
                for item in items:
                    count += item.quantity
        except:
            count = 0
    return {'cart_item_count': count}