<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use Illuminate\Http\Request;
use Spatie\Sitemap\Sitemap;
use App\Models\Blog as BlogModel;
use Spatie\Sitemap\Tags\Url;

class SitemapController extends Controller
{
    public function generateSitemap()
    {
        // Tạo một sitemap mới
        $sitemap = Sitemap::create();

        // Lấy tất cả các blog từ cơ sở dữ liệu
        $blogs = BlogModel::all();

        // Thêm từng blog vào sitemap
        foreach ($blogs as $blog) {
            $sitemap->add(Url::create('/blog/' . $blog->slug) // Giả sử bạn có một trường 'slug' trong model Blog
                ->setLastModificationDate(Carbon::yesterday())
                ->setChangeFrequency(Url::CHANGE_FREQUENCY_YEARLY)
                ->setPriority(0.8) // Độ ưu tiên
            );
        }

        // Ghi sitemap vào file
        $sitemap->writeToFile(public_path('sitemap.xml'));
    }
}
