<div class="product-grid">
    <div class="feature-products">
        <div class="row">
            <!-- Search Bar -->
            <div class="col-md-12">
                <form action="" method="GET" id="searchFrom">
                    <div class="form-group m-0">
                        <input class="form-control" wire:model="search" type="search" name="keyword"
                               placeholder="Tìm Kiếm VD: Bán code, Bán hosting" value="" title="">
                        <i style="cursor: pointer;" class="fa fa-search"></i>
                    </div>
                </form>
            </div>
        </div>

        <div class="row ">
            <!-- Category Filter -->
            <div class="col-md-3 mt-3">
                <select wire:model="category" class="form-control">
                    <option value="">Tất cả danh mục</option>
                    @foreach ($categories as $cat)
                        <option value="{{ $cat->id }}">{{ $cat->name }}</option>
                    @endforeach
                </select>
            </div>

            <!-- Sort By -->
            <div class="col-md-3 mt-3">
                <select wire:model="sortBy" class="form-control">
                    <option value="created_at">Ngày đăng</option>
                    <option value="view_count">Lượt xem</option>
                    <option value="price">Giá</option>
                    <option value="purchase_count">Lượt mua</option>
                </select>
            </div>

            <!-- Sort Direction -->
            <div class="col-md-3 mt-3">
                <button wire:click="toggleSortDirection" class="btn btn-secondary">
                    {{ $sortDirection === 'asc' ? 'Tăng dần' : 'Giảm dần' }}
                </button>
            </div>
        </div>
    </div>

    <!-- Product List -->
    <div class="product-wrapper-grid mt-3" style="opacity: 1;">
        <div class="row">
            @forelse ($sourceCodeProduct as $item)
                <div class="col-xl-3 col-sm-6 xl-4">
                    <div class="card">
                        <div class="product-box">
                            <div class="product-img">
                                <img style="object-fit: cover; width: 100%;" class="img-fluid"
                                     src="{{ Storage::url($item->image) }}" alt="">
                                <div class="product-hover">
                                    <ul>
                                        <li>
                                            <button class="btn" type="button" wire:navigate
                                                    href="/source-code/list/{{ $item->id }}">
                                                <i class="icon-shopping-cart"></i>
                                            </button>
                                        </li>
                                        <li>
                                            <button class="btn" onclick="window.open('{{ $item->demo }}');"
                                                    type="button">
                                                <i class="icon-eye"></i>
                                            </button>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="product-details">
                                <a style="cursor: pointer;" wire:navigate href="/source-code/list/{{ $item->id }}">
                                    <h5 style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">
                                        {{ $item->name }}
                                    </h5>
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
                                              style="width: 100%; padding: 10px;">
                                            <i class="icofont icofont-wallet"></i>
                                            {{ number_format($item->price, 0, ',', '.') }}đ
                                        </span>
                                    </div>
                                    <div class="col-md-6 col-6">
                                        <span  wire:navigate href="/source-code/list/{{ $item->id }}" class="badge badge-dark text-white" style="width: 100%; padding: 10px; cursor: pointer">
                                            <i class="icofont icofont-cart"></i> Mua Ngay
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            @empty
                <div class="col-12 text-center">
                    <p>Không có sản phẩm phù hợp.</p>
                </div>
            @endforelse
        </div>
    </div>
</div>
