<div class="modal fade" id="modalHome" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenter1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <div class="modal-toggle-wrapper" style="position: relative;">
                    <b style="font-size: 14px;" class="text-center text-danger">Thông Báo</b>
                    <span class="close"
                        style="position: absolute; top: 0; right: 0; margin-top: -10px; font-size: 1.4rem; cursor: pointer;"
                        data-bs-dismiss="modal">
                        <span aria-hidden="true">&times;</span>
                    </span>
                    <br>
                    <div class="mt-3" style="
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    flex-direction: column;
                ">
                        {!! App\Helpers\SettingsHelper::getSetting('notification') !!}
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
