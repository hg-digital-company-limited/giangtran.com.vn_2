<div class="col-xl-12">
    <div class="card title-line">
        <div class="card-header">
            <h2 class="card-title mb-0"> Kiểm Tra Domain </h2>
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-md-6">
                    <form wire:submit.prevent="checkDomain" class="row">
                        <div class="form-group">
                            <label>Domain:</label>
                            <input type="text" wire:model="domain" class="form-control"
                                placeholder="Ví dụ: giangtran.com.vn" />
                        </div>
                        <div class="form-group mt-3">
                            <button class="btn btn-primary" wire:click="checkDomain" wire:loading.attr="disabled"
                                wire:target="checkDomain" wire:loading.class="btn-secondary"> Kiểm Tra</button>
                            <button class="btn btn-secondary" wire:click="resetFields">Reset</button>
                        </div>
                    </form>
                </div>
                <div class="col-md-6">
                    @if ($status)
                        <div class="mt-3">
                            <h4>Kết quả:</h4>
                            <div class="card">
                                <div class="card-body">
                                    <p><strong>Trạng thái:</strong> {{ $status }}</p>
                                    <p><strong>Đăng ký bởi:</strong> {{ $registrar }}</p>
                                    <p><strong>Tên miền:</strong> {{ $domain }}</p>
                                    <p><strong>Ngày tạo:</strong> {{ $creationDate }}</p>
                                    <p><strong>Ngày hết hạn:</strong> {{ $expirationDate }}</p>
                                    <p><strong>Tên người đăng ký:</strong> {{ $registrantName }}</p>
                                    <p><strong>DNSSEC:</strong> {{ $dnssec }}</p>
                                    <p><strong>Name Server:</strong></p>
                                    <ul>
                                        @foreach ($nameServer as $server)
                                            <li>{{ $server }}</li>
                                        @endforeach
                                    </ul>
                                </div>
                            </div>
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>
