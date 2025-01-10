<div class="card card-body">
    <div class="row">
        <div class="col-md-4">
            @foreach ($sourceCodeDetail->image as $item)
            <a data-fancybox="gallery" {{ $loop->index > 0 ? 'hidden' : '' }}
                href="{{ Storage::url($item) }}"
                data-caption="<strong>{{ $sourceCodeDetail->name }}</strong>">
                <img src="{{ Storage::url($item) }}"
                    class="img-fluid" alt="{{ $sourceCodeDetail->name }}" alt="{{ $sourceCodeDetail->name }}"
                    style="max-width: 100%; border-radius: 5px;">
            </a>
            @endforeach
        </div>

        <div class="col-md-8">
            <div class="mt-2">
                <h3 class="d-none d-md-block"><span
                        class="badge badge-pill badge-success"
                        style="padding: 6px;"> {{ $sourceCodeDetail->category->name }} </span> [MS:
                    #{{ $sourceCodeDetail->id }}]{{ $sourceCodeDetail->name }}
                </h3>

                <h3 class="d-block d-md-none mt-3"><span
                        class="badge badge-pill badge-primary"
                        style="padding: 6px;"> Có Phí </span> [MS:
                    #{{ $sourceCodeDetail->id }}]{{ $sourceCodeDetail->name }}
                </h3>

                <div class="row mt-2"
                    style="display: flex;flex-wrap: nowrap;">
                    <div
                        style="width: inherit; ">
                        <i class="icofont icofont-eye-alt"></i> Lượt xem:
                        {{ $sourceCodeDetail->view_count }}
                    </div>

                    <div
                        style="width: inherit;">
                        <i class="icofont icofont-history"></i> Lượt mua:
                        {{ $sourceCodeDetail->purchase_count }}
                    </div>
                </div>

                <span class="mt-2"> Ngày tạo:
                    {{ $sourceCodeDetail->created_at }}
                </span>

                <div class="col-md-12 card card-body text-light mt-3"
                    style="background: url(/assets/assets/images/cyberlux/code-arow-background.png);background-size: 100% 100%;">
                    <div class="row">
                        <div class="col-md-8 col-8">
                            Điều Khoản & Chính Sách Bảo Hành Nên Đọc
                        </div>

                        <div class="col-md-4 col-4 text-end">
                            <a href="/dieu-khoan"
                                class="badge badge-pill badge-primary"> Xem Ngay
                            </a>
                        </div>
                    </div>
                </div>

                <div class="mt-4">
                    <span>Giá Công Khai: <strong class="text-danger">
                            {{ number_format($sourceCodeDetail->price) }}<sup>VND</sup></strong></span>

                    <div class="row mt-2" style="display: flex;flex-wrap: nowrap;">
                        <div  style="width: inherit;">
                            <span class="badge badge-danger text-white"
                                style="width: 100%; padding: 10px; cursor: pointer;"
                                onclick="window.open('{{ $sourceCodeDetail->demo }}');">
                                <i class="icofont icofont-dashboard-web"></i> Xem
                                Demo </span>
                        </div>

                        <div style="width: inherit;">
                            <span class="badge badge-dark text-white"
                            style="width: 100%; padding: 10px; cursor: pointer;"
                            wire:click="payment"
                            id="payment"
                            wire:loading.attr="disabled"
                            wire:loading.class="disabled">
                          <i class="icofont icofont-cart"></i>
                          <span wire:loading.remove>Thanh Toán</span>
                          <span wire:loading>Đang xử lý...</span>
                      </span>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

</div>
