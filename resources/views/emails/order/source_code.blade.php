<img src="https://i.ibb.co/MNkB3KP/giangtran-1.png" alt="Logo" style="width: 300px;">
<br>
Xin chào! <br>
cảm ơn bạn đã đặt hàng tại {{ App\Helpers\SettingsHelper::getSetting('website_name') }} <br>
<img src="{{ url(Storage::url($order->product->image[0])) }}" style="width: 300px;" alt="ảnh sản phẩm"> <br>
Tên sản phẩm: {{ $order->name }}<br>
Mã sản phẩm: {{ $order->id }}<br>
Gía: {{ number_format($order->unit_price, 0, ',', '.') }} VNĐ<br>
Link download: <a href="{{ $order->link_download }}">Tải xuống</a><br>
ngày mua: {{ $order->created_at }}<br>
