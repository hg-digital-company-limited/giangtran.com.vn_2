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
                            <div class="card mb-0">
                                <div class="card-header d-flex">
                                    <h2 class="mb-0">Thông tin tên miền</h2>
                                </div>
                                <div class="card-body p-0">
                                    <div class="taskadd">
                                        <div class="table-responsive custom-scrollbar">
                                            <table class="table">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <h6 class="task_title_0">Trạng thái</h6>
                                                        </td>
                                                        <td>
                                                            <p class="task_desc_0">{{ $status ?? 'Không xác định' }}</p>
                                                        </td>


                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <h6 class="task_title_0">Đăng ký bởi</h6>
                                                        </td>
                                                        <td>
                                                            <p class="task_desc_0">{{ $registrar ?? 'Không xác định' }}</p>
                                                        </td>


                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <h6 class="task_title_0">Tên miền</h6>
                                                        </td>
                                                        <td>
                                                            <p class="task_desc_0">{{ $domain ?? 'Không xác định' }}</p>
                                                        </td>


                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <h6 class="task_title_0">Ngày tạo</h6>
                                                        </td>
                                                        <td>
                                                            <p class="task_desc_0">{{ $creationDate ?? 'Không xác định' }}</p>
                                                        </td>


                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <h6 class="task_title_0">Ngày hết hạn</h6>
                                                        </td>
                                                        <td>
                                                            <p class="task_desc_0">{{ $expirationDate ?? 'Không xác định' }}</p>
                                                        </td>


                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <h6 class="task_title_0">Tên người đăng ký</h6>
                                                        </td>
                                                        <td>
                                                            <p class="task_desc_0">{{ $registrantName ?? 'Không xác định' }}</p>
                                                        </td>


                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <h6 class="task_title_0">DNSSEC</h6>
                                                        </td>
                                                        <td>
                                                            <p class="task_desc_0">{{ $dnssec ?? 'Không xác định' }}</p>
                                                        </td>


                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <h6 class="task_title_0">Name Server</h6>
                                                        </td>
                                                        <td>
                                                            <p class="task_desc_0">
                                                                @if ($nameServer)
                                                                @foreach ($nameServer as $server)
                                                                    <li>{{ $server }}</li>
                                                                @endforeach
                                                            @endif
                                                            </p>
                                                        </td>


                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>
