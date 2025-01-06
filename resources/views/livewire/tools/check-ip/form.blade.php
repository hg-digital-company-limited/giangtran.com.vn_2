<div class="row">
    <div class="col-md-6 col-12">
        <div class="card title-line">
            <div class="card-header">
                <h2 class="card-title mb-0"> Kiểm Tra IP </h2>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-6">
                        <form wire:submit.prevent="checkIp" class="row">
                            <div class="form-group">
                                <label>IP:</label>
                                <input type="text" wire:model="ip" class="form-control"
                                    placeholder="Ví dụ: 192.168.1.1 hoặc để trống" />
                            </div>
                            <div class="form-group mt-3">
                                <button class="btn btn-primary" wire:click="checkIp" wire:loading.attr="disabled"
                                    wire:target="checkIp" wire:loading.class="btn-secondary"> Kiểm Tra</button>
                                <button class="btn btn-secondary" wire:click="resetFields">Reset</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-md-6 col-12">
        @if ($status === 'success')
            <div class="card title-line">
                <div class="card-header">
                    <h2 class="card-title mb-0"> Kết quả Kiểm Tra IP </h2>
                </div>
                <div class="card-body p-0">
                    <div class="taskadd">
                        <div class="table-responsive custom-scrollbar">
                            <table class="table">
                                <tbody>
                                    <tr>
                                        <td>
                                            <h6 class="task_title_0">Địa chỉ IP</h6>
                                        </td>
                                        <td>
                                            <p class="task_desc_0">{{ $ipData['ipAddress'] }}</p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h6 class="task_title_0">Quốc gia</h6>
                                        </td>
                                        <td>
                                            <p class="task_desc_0">{{ $ipData['countryName'] }}</p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h6 class="task_title_0">Mã quốc gia</h6>
                                        </td>
                                        <td>
                                            <p class="task_desc_0">{{ $ipData['countryCode'] }}</p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h6 class="task_title_0">Thành phố</h6>
                                        </td>
                                        <td>
                                            <p class="task_desc_0">{{ $ipData['cityName'] }}</p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h6 class="task_title_0">Khu vực</h6>
                                        </td>
                                        <td>
                                            <p class="task_desc_0">{{ $ipData['regionName'] }}</p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h6 class="task_title_0">Tọa độ</h6>
                                        </td>
                                        <td>
                                            <p class="task_desc_0">{{ $ipData['latitude'] }}, {{ $ipData['longitude'] }}</p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h6 class="task_title_0">Múi giờ</h6>
                                        </td>
                                        <td>
                                            <p class="task_desc_0">{{ $ipData['timeZone'] }}</p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h6 class="task_title_0">Múi giờ khác</h6>
                                        </td>
                                        <td>
                                            <p class="task_desc_0">
                                                @if (!empty($ipData['timeZones']))
                                                    <ul>
                                                        @foreach ($ipData['timeZones'] as $timezone)
                                                            <li>{{ $timezone }}</li>
                                                        @endforeach
                                                    </ul>
                                                @else
                                                    Không xác định
                                                @endif
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h6 class="task_title_0">Địa chỉ bưu điện</h6>
                                        </td>
                                        <td>
                                            <p class="task_desc_0">{{ $ipData['zipCode'] }}</p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h6 class="task_title_0">Ngôn ngữ</h6>
                                        </td>
                                        <td>
                                            <p class="task_desc_0">{{ $ipData['language'] }}</p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h6 class="task_title_0">Tiền tệ</h6>
                                        </td>
                                        <td>
                                            <p class="task_desc_0">{{ $ipData['currency']['name'] }} ({{ $ipData['currency']['code'] }})</p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h6 class="task_title_0">TLDs</h6>
                                        </td>
                                        <td>
                                            <p class="task_desc_0">
                                                @if (!empty($ipData['tlds']))
                                                    <ul>
                                                        @foreach ($ipData['tlds'] as $tld)
                                                            <li>{{ $tld }}</li>
                                                        @endforeach
                                                    </ul>
                                                @else
                                                    Không xác định
                                                @endif
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h6 class="task_title_0">Proxy?</h6>
                                        </td>
                                        <td>
                                            <p class="task_desc_0">{{ $ipData['isProxy'] ? 'Có' : 'Không' }}</p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        @endif
    </div>
</div>
