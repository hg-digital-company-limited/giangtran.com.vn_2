<div class="col-xl-12">
    <div class="card title-line">
        <div class="card-header">
            <h2 class="card-title mb-0"> Tạo QR Code </h2>
        </div>
        <div class="card-body">
            <div class="row">
                <form wire:submit.prevent="generateQrCode" class="row">
                <div class="col-md-6">
                        <label>Số tài khoản:</label>
                        <input type="text" wire:model="accountNumber" name="accountNumber" class="form-control" placeholder="Ví dụ: {{ App\Helpers\SettingsHelper::getSetting('account_number') }}" />

                    <label>Ngân hàng:</label>
                    <input type="text" wire:model="bankName" name="bankName" class="form-control" placeholder="Ví dụ: {{ App\Helpers\SettingsHelper::getSetting('bank_name') }}" />

                    <label>Số tiền:</label>
                    <input type="text" wire:model="amount" name="amount" class="form-control" placeholder="Ví dụ: {{ App\Helpers\SettingsHelper::getSetting('min_deposit') }}" />

                    <label>Nội dung:</label>
                    <input type="text"  wire:model="content" class="form-control" placeholder="Ví dụ: {{ App\Helpers\SettingsHelper::getSetting('prefix') }}{{ Auth::check() ? strtoupper(Auth::user()->username) : 'Khách' }}" />
                </div>
                <div class="col-md-6">

                    <div class="mt-3">
                        <h4>QR Code:</h4>
                        @if ($qrCodeUrl)
                            <img src="{{ $qrCodeUrl }}" alt="QR Code" class="img-fluid" />
                        @endif
                    </div>
                </div>
                </form>
            </div>
            <div class="mt-3">
                <button class="btn btn-primary" wire:click="generateQrCode" wire:loading.attr="disabled" wire:target="generateQrCode" wire:loading.class="btn-secondary"> Tạo QR Code</button>
                <button class="btn btn-secondary" wire:click="resetFields">Reset</button>
                @if ($qrCodeUrl)
                    <a href="{{ $qrCodeUrl }}" download class="btn btn-success">Tải về</a>
                @endif
            </div>
        </div>
    </div>
</div>
