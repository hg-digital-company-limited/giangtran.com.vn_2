<img src="https://i.ibb.co/MNkB3KP/giangtran-1.png" alt="Logo" style="width: 300px;">
<br>
Xin chào! <br>
cảm ơn bạn đã đặt hàng tại GIANGTRAN.COM.VN <br>
<img src="https://giangtran.com.vn/storage/{{ $order->product->image }}" style="width: 300px;" alt="ảnh sản phẩm"> <br>
Tên sản phẩm: {{ $order->name }}<br>
Mã sản phẩm: {{ $order->id }}<br>
Gía: {{ number_format($order->unit_price, 0, ',', '.') }} VNĐ<br>
Link download: <a href="{{ $order->link_download }}">Tải xuống</a><br>
{{-- ảnh sản phẩm: <img src="{{url(Storage::url($order->product->image))}}" alt="ảnh sản phẩm"> <br> --}}

ngày mua: {{ $order->created_at }}<br>
Mô tả sản phẩm: {!! $order->product->description !!}<br>
