<div class="product-grid">
    <div class="feature-products">

        <div class="row">
            <div class="col-md-12">
                <form action="" method="GET" id="searchFrom">
                    <div class="form-group m-0">
                        <input class="form-control" wire:model.live..1000ms="search" type="search" name="keyword"
                            placeholder="Tìm Kiếm VD: Bán code, Bán hosting" value="" data-original-title=""
                            title=""><i style="cursor: pointer;" class="fa fa-search"></i>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="product-wrapper-grid mt-3" style="opacity: 1;">
        <div class="row">

            @foreach ($sourceCodeProduct as $item)
                <div class="col-xl-3 col-sm-6 xl-4">
                    <div class="card">
                        <div class="product-box">
                            <div class="product-img">


                                <img style=" object-fit: cover;   width: 100%;" class="img-fluid"
                                    src="{{ Storage::url($item->image) }}" alt="">
                                <div class="product-hover">
                                    <ul>
                                        <li>
                                            <button class="btn" type="button"
                                                href="/source-code/list/{{ $item->id }}" wire:navigate><i
                                                    class="icon-shopping-cart"></i></button>
                                        </li>
                                        <li>
                                            <button class="btn" onclick="window.open('{{ $item->demo }}');"
                                                type="button"><i class="icon-eye"></i></button>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <div class="product-details">
                                <a style="cursor: pointer;" href="/source-code/list/{{ $item->id }}" wire:navigate>
                                    <h5 style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">
                                        {{ $item->name }} </h5>
                                </a>

                                <div class="row mt-2">
                                    <div class="col-md-6 col-6">
                                        <i class="icofont icofont-eye-alt"></i>
                                        Lượt xem: {{ $item->view_count }}
                                    </div>

                                    <div class="col-md-6 col-6">
                                        <i class="icofont icofont-history"></i>
                                        Lượt mua: {{ $item->purchase_count }}
                                    </div>
                                </div>

                                <div class="row mt-2">
                                    <div class="col-md-6 col-6">
                                        <span class="badge badge-primary text-white"
                                            style="width: 100%; padding: 10px; cursor: pointer;">
                                            <i class="icofont icofont-wallet"></i>
                                            {{ number_format($item->price, 0, ',', '.') }}đ
                                        </span>
                                    </div>

                                    <div class="col-md-6 col-6">
                                        <span class="badge badge-dark text-white"
                                            style="width: 100%; padding: 10px; cursor: pointer;"
                                            href="/source-code/list/{{ $item->id }}" wire:navigate> <i
                                                class="icofont icofont-cart"></i> Mua Ngay
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
        <div class="row justify-content-center align-items-center g-2">
            <div class="col-12" style="display: flex; justify-content: center; align-items: center;">
                <div>
                    <ul class="pagination pagination-dark pagin-border-dark gap-2">
                        @if ($sourceCodeProduct->onFirstPage())
                            <li class="page-item disabled"><a class="page-link rounded-circle" href="#!" aria-label="Previous"><span
                                        aria-hidden="true">«</span><span class="sr-only">Previous</span></a></li>
                        @else
                            <li class="page-item"><a class="page-link rounded-circle" href="{{ $sourceCodeProduct->previousPageUrl() }}" aria-label="Previous"><span
                                        aria-hidden="true">«</span><span class="sr-only">Previous</span></a></li>
                        @endif

                        @for ($i = 1; $i <= $sourceCodeProduct->lastPage(); $i++)
                            @if ($i == $sourceCodeProduct->currentPage())
                                <li class="page-item  "><a class="page-link rounded-circle" style="background-color: #2c323f !important; color: white !important;" href="#!">{{ $i }}</a></li>
                            @else
                                <li class="page-item"><a class="page-link rounded-circle" href="{{ $sourceCodeProduct->url($i) }}">{{ $i }}</a></li>
                            @endif
                        @endfor

                        @if ($sourceCodeProduct->hasMorePages())
                            <li class="page-item"><a class="page-link rounded-circle" href="{{ $sourceCodeProduct->nextPageUrl() }}" aria-label="Next"><span
                                        aria-hidden="true">»</span><span class="sr-only">Next</span></a></li>
                        @else
                            <li class="page-item disabled"><a class="page-link rounded-circle" href="#!" aria-label="Next"><span
                                        aria-hidden="true">»</span><span class="sr-only">Next</span></a></li>
                        @endif
                    </ul>
                </div>
            </div>
        </div>

    </div>
</div>
