<div>

    <head>
        <title>{{ $sourceCodeDetail->name }} - {{ App\Helpers\SettingsHelper::getSetting('website_name') }}</title>
        <meta name="description" content="{{ $sourceCodeDetail->name }} - {{ App\Helpers\SettingsHelper::getSetting('website_name') }}">
        @livewire('inc.seo', ['keywords' => $sourceCodeDetail->name . ', ' . App\Helpers\SettingsHelper::getSetting('website_name'),
         'image' => url(Storage::url($sourceCodeDetail->image[0]))])
        <script src="https://cdn.jsdelivr.net/npm/@fancyapps/ui@5.0/dist/fancybox/fancybox.umd.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fancyapps/ui@5.0/dist/fancybox/fancybox.css" />
    </head>

    <body id="content">

        <div>
            <div class="tap-top"><i data-feather="chevrons-up"></i></div>

            <div class="page-wrapper compact-wrapper" id="pageWrapper">
                @livewire('inc.header')
                <div class="page-body-wrapper">


                    @livewire('inc.sidebar-wrapper')

                    <style>
                        li {
                            padding-top: 5px;
                        }
                    </style>

                    <div class="page-body">
                        <div class="container-fluid">

                            <div class="row">
                                <div class="col-md-12">
                                    @livewire('services.source-code.components.form', ['id' => $sourceCodeDetail->id])
                                </div>

                                <div class="col-md-8">
                                    <div class="card card-body">
                                        <h4 class="mb-0">
                                            <i class="icofont icofont-console"></i> Mô Tả Chi Tiết
                                        </h4>

                                        <div class="mt-3">
                                            <div class="bg-light text-dark" style="border-radius: 8px; padding: 8px;">
                                                <h5>{{ $sourceCodeDetail->name }}</h5>
                                                <h5 class="mt-2"> Mã Số: [MS: #{{ $sourceCodeDetail->id }}]</h5>
                                            </div>

                                            <div id="content-gallery" class="mt-3"
                                                style="border-radius: 8px; padding: 8px;">
                                                {!! $sourceCodeDetail->description !!}
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="card card-body">
                                        <h4 class="mb-0">
                                            <i class="icofont icofont-space"></i> Đề Xuất
                                        </h4>

                                        <div class="mt-3">
                                            <div class="row">
                                                @foreach ($randomProducts as $item)
                                                <div class="col-md-4 col-4" style="padding: 10px;">
                                                    <a    href="/source-code/list/{{ $item->id }}"
                                                        data-caption="{{ $item->name }}">
                                                        <img src="{{ Storage::url($item->image[0]) }}" class="img-fluid"
                                                            alt="{{ $item->name }}"
                                                            style="max-width: 100%; border-radius: 5px;">
                                                    </a>

                                                    <a style="cursor: pointer;"
                                                        href="/source-code/list/{{ $item->id }}"
                                                        >
                                                        <h5
                                                            style="display: -webkit-box; -webkit-box-orient: vertical; -webkit-line-clamp: 2; overflow: hidden; text-overflow: ellipsis; padding-top: 5px;">
                                                            {{ $item->name }}
                                                        </h5>
                                                    </a>
                                                </div>
                                                @endforeach

                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <script src="/assets/static/payment-code.js" defer></script>
                    @livewire('inc.footer')
                </div>
            </div>
        </div>



        <style>
            table tfoot tr {
                padding-bottom: 6px;
            }

            table tfoot tr td {
                padding-bottom: 6px;
            }
            #content-gallery img {
                width: 100%;
                height: inherit;
            }
        </style>
        @script
         <script>
            window.addEventListener("load", function() {
                const galleryDiv = document.getElementById("content-gallery");
                const images = galleryDiv.getElementsByTagName("img");

                for (let i = 0; i < images.length; i++) {
                    const img = images[i];
                    const src = img.src;
                    const alt = img.alt;

                    const anchor = document.createElement("a");
                    anchor.setAttribute("data-fancybox", "gallery");
                    anchor.setAttribute("href", src);
                    anchor.setAttribute("data-caption", `<strong>${alt}</strong>`);

                    img.parentNode.insertBefore(anchor, img);
                    anchor.appendChild(img);

                    img.style.width = "100%";
                    img.style.height = "auto";
                }
            });
        </script>
        @endscript
        <script>
            Fancybox.bind('[data-fancybox="gallery"]', {
                // Your custom options for a specific gallery
            });
        </script>
    </body>
</div>
