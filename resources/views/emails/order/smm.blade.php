<img src="https://i.ibb.co/MNkB3KP/giangtran-1.png" alt="Logo" style="width: 300px;">
<br>
 Xin chào! <br>
 cảm ơn bạn đã đặt hàng tại {{ App\Helpers\SettingsHelper::getSetting('website_name') }} <br>
 dịch vụ: {{ $order->service->name }} <br>
 số lượng: {{ $order->quantity }} <br>
 đơn giá: {{ number_format($order->unit_price, 0, ',', '.') }} VNĐ <br>
 tổng tiền: {{ number_format($order->total_price, 0, ',', '.') }} VNĐ <br>
 link: {{ $order->link }} <br>


