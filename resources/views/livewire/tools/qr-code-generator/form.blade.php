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
                        <input type="text" wire:model="accountNumber" name="accountNumber" class="form-control"
                            placeholder="Ví dụ: {{ App\Helpers\SettingsHelper::getSetting('account_number') }}" />

                        <label class="mt-3">Ngân hàng:</label>
                        <select name="" id="bank-select" wire:model="bankName" class="form-control">
                            <option data-image='https://vietqr.net/portal-service/resources/icons/ABB.png'
                                value="ABB">ABB - Ngân hàng TMCP An Bình </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/ACB.png'
                                value="ACB">ACB - Ngân hàng TMCP Á Châu </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/BAB.png'
                                value="BAB">BAB - Ngân hàng TMCP Bắc Á </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/BIDV.png'
                                value="BIDV">BIDV - Ngân hàng TMCP Đầu tư và Phát triển Việt Nam </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/BNP.png'
                                value="BNP">BNP HCM - Ngân hàng BNP Paribas – Chi nhánh Thành phố Hồ Chí Minh
                            </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/BNP.png'
                                value="BNP">BNP HN - Ngân hàng BNP Paribas – Chi nhánh Hà Nội </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/BVB.png'
                                value="BVB">BVB - Ngân hàng TMCP Bảo Việt </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/CAKE.png'
                                value="CAKE">CAKE - TMCP Việt Nam Thịnh Vượng - Ngân hàng số CAKE by VPBank </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/CBB.png'
                                value="CBB">CBB - Ngân hàng Thương mại TNHH MTV Xây dựng Việt Nam </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/CIMB.png'
                                value="CIMB">CIMB - Ngân hàng TNHH MTV CIMB Việt Nam </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/CITIBANK.png'
                                value="CITIBANK">CITIBANK - Ngân hàng Citibank, N.A. - Chi nhánh Hà Nội </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/COOPBANK.png'
                                value="COOPBANK">COOPBANK - Ngân hàng Hợp tác xã Việt Nam </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/CUB.png'
                                value="CUBHCM">CUBHCM - Ngân hàng Cathay United Bank – Chi nhánh Hồ Chí Minh </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/DBS.png'
                                value="DBS">DBS - DBS Bank Ltd - Chi nhánh Thành phố Hồ Chí Minh </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/DOB.png'
                                value="DOB">DOB - Ngân hàng TMCP Đông Á </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/EIB.png'
                                value="EIB">EIB - Ngân hàng TMCP Xuất Nhập khẩu Việt Nam </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/GPB.png'
                                value="GPB">GPB - Ngân hàng Thương mại TNHH MTV Dầu Khí Toàn Cầu </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/HDB.png'
                                value="HDB">HDB - Ngân hàng TMCP Phát triển Thành phố Hồ Chí Minh </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/HLBVN.png'
                                value="HLBVN">HLBVN - Ngân hàng TNHH MTV Hong Leong Việt Nam </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/HSBC.png'
                                value="HSBC">HSBC - Ngân hàng TNHH MTV HSBC (Việt Nam) </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/IBK.png'
                                value="IBK">IBK - HCM - Ngân hàng Công nghiệp Hàn Quốc - Chi nhánh TP. Hồ Chí
                                Minh </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/IBK.png'
                                value="IBK">IBK - HN - Ngân hàng Công nghiệp Hàn Quốc - Chi nhánh Hà Nội
                            </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/ICB.png'
                                value="ICB">ICB - Ngân hàng TMCP Công thương Việt Nam </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/IVB.png'
                                value="IVB">IVB - Ngân hàng TNHH Indovina </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/KB.png'
                                value="KBHCM">KBHCM - Ngân hàng Kookmin - Chi nhánh Thành phố Hồ Chí Minh </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/KB.png'
                                value="KBHN">KBHN - Ngân hàng Kookmin - Chi nhánh Hà Nội </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/KBank.png'
                                value="KBank">KBank - Ngân hàng Đại chúng TNHH Kasikornbank </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/KEBHANAHCM.png'
                                value="KEBHANAHCM">KEBHANAHCM - Ngân hàng KEB Hana – Chi nhánh Thành phố Hồ Chí Minh
                            </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/KEBHANAHN.png'
                                value="KEBHANAHN">KEBHANAHN - Ngân hàng KEB Hana – Chi nhánh Hà Nội </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/KLB.png'
                                value="KLB">KLB - Ngân hàng TMCP Kiên Long </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/LPBANK.png'
                                value="LPBANK">LPBANK - Ngân hàng TMCP Lộc Phát Việt Nam </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/MAFC.png'
                                value="MAFC">MAFC - Công ty Tài chính TNHH MTV Mirae Asset (Việt Nam) </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/MB.png'
                                value="MB">MB - Ngân hàng TMCP Quân đội </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/MBV.png'
                                value="MBV">MBV - Ngân hàng TNHH MTV Việt Nam Hiện Đại </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/MSB.png'
                                value="MSB">MSB - Ngân hàng TMCP Hàng Hải </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/MVAS.png'
                                value="MVAS">MVAS - Trung tâm Dịch vụ số Mobifone – Chi nhánh Tổng Công ty viễn thông
                                Mobifone </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/NAB.png'
                                value="NAB">NAB - Ngân hàng TMCP Nam Á </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/NCB.png'
                                value="NCB">NCB - Ngân hàng TMCP Quốc Dân </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/NHB%20HN.png'
                                value="NHB">NHB HN - Ngân hàng Nonghyup - Chi nhánh Hà Nội </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/OCB.png'
                                value="OCB">OCB - Ngân hàng TMCP Phương Đông </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/PBVN.png'
                                value="PBVN">PBVN - Ngân hàng TNHH MTV Public Việt Nam </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/PGB.png'
                                value="PGBank">PGBank - Ngân hàng TMCP Thịnh vượng và Phát triển </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/PVCB.png'
                                value="PVCB">PVCB - Ngân hàng TMCP Đại Chúng Việt Nam </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/PVCB%20Pay.png'
                                value="PVCB">PVCB Pay - Ngân hàng số PVcomBank </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/SCB.png'
                                value="SCB">SCB - Ngân hàng TMCP Sài Gòn </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/SCVN.png'
                                value="SCVN">SCVN - Ngân hàng TNHH MTV Standard Chartered Bank Việt Nam </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/SEAB.png'
                                value="SEAB">SEAB - Ngân hàng TMCP Đông Nam Á </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/SGICB.png'
                                value="SGICB">SGICB - Ngân hàng TMCP Sài Gòn Công Thương </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/SHB.png'
                                value="SHB">SHB - Ngân hàng TMCP Sài Gòn - Hà Nội </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/SHBVN.png'
                                value="SHBVN">SHBVN - Ngân hàng TNHH MTV Shinhan Việt Nam </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/STB.png'
                                value="STB">STB - Ngân hàng TMCP Sài Gòn Thương Tín </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/TCB.png'
                                value="TCB">TCB - Ngân hàng TMCP Kỹ thương Việt Nam </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/TIMO.png'
                                value="TIMO">TIMO - Ngân hàng số Timo by Ban Viet Bank (Timo by Ban Viet Bank)
                            </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/TPB.png'
                                value="TPB">TPB - Ngân hàng TMCP Tiên Phong </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/UOB.png'
                                value="UOB">UOB - Ngân hàng United Overseas - Chi nhánh TP. Hồ Chí Minh </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/Ubank.png'
                                value="Ubank">Ubank - TMCP Việt Nam Thịnh Vượng - Ngân hàng số Ubank by VPBank
                            </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/VAB.png'
                                value="VAB">VAB - Ngân hàng TMCP Việt Á </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/VBA.png'
                                value="VBA">VBA - Ngân hàng Nông nghiệp và Phát triển Nông thôn Việt Nam </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/VBSP.png'
                                value="VBSP">VBSP - Ngân hàng Chính sách Xã hội </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/VCB.png'
                                value="VCB">VCB - Ngân hàng TMCP Ngoại Thương Việt Nam </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/VCCB.png'
                                value="VCCB">VCCB - Ngân hàng TMCP Bản Việt </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/VIB.png'
                                value="VIB">VIB - Ngân hàng TMCP Quốc tế Việt Nam </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/VIETBANK.png'
                                value="VIETBANK">VIETBANK - Ngân hàng TMCP Việt Nam Thương Tín </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/VNPTMONEY.png'
                                value="VNPTMONEY">VNPTMONEY - Trung tâm dịch vụ tài chính số VNPT- Chi nhánh Tổng công
                                ty truyền thông (VNPT Fintech) </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/VPB.png'
                                value="VPB">VPB - Ngân hàng TMCP Việt Nam Thịnh Vượng </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/VRB.png'
                                value="VRB">VRB - Ngân hàng Liên doanh Việt - Nga </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/VTLMONEY.png'
                                value="VTLMONEY">VTLMONEY - Tổng Công ty Dịch vụ số Viettel - Chi nhánh tập đoàn công
                                nghiệp viễn thông Quân Đội </option>
                            <option data-image='https://vietqr.net/portal-service/resources/icons/WVN.png'
                                value="WVN">WVN - Ngân hàng TNHH MTV Woori Việt Nam </option>
                        </select>
                        @script
                            <script>
                                initializeSelect3()
                                Livewire.on('select2:updated2', () => {
                                    initializeSelect3();
                                });
                                // Khởi tạo Select2


                                // Hàm định dạng các option
                                function formatState(state) {
                                    if (!state.id) {
                                        return state.text;
                                    }
                                    const imageUrl = $(state.element).data('image');
                                    return $('<span><img src="' + imageUrl +
                                        '" class="img-flag" style="width: 100px;  " /> ' + state
                                        .text + '</span>');
                                }
                                $('#bank-select').on('change', function(e) {
                                    const bankName = $(this).val(); // Lấy giá trị đã chọn
                                    console.log('Selected bank:', bankName); // Hiển thị trong console
                                    $wire.$set('bankName', bankName)
                                });

                                function initializeSelect3() {
                                    $(document).ready(function() {
                                        $('#bank-select').select2({
                                    templateResult: formatState,
                                    templateSelection: formatState
                                });
                                    });
                                }
                            </script>
                        @endscript
                        <label class="mt-3">Số tiền:</label>
                        <input type="text" wire:model="amount" name="amount" class="form-control"
                            placeholder="Ví dụ: {{ App\Helpers\SettingsHelper::getSetting('min_deposit') }}" />

                        <label class="mt-3">Nội dung:</label>
                        <input type="text" wire:model="content" class="form-control"
                            placeholder="Ví dụ: {{ App\Helpers\SettingsHelper::getSetting('prefix') }}{{ Auth::check() ? strtoupper(Auth::user()->username) : 'Khách' }}" />
                    </div>
                    <div class="col-md-6">

                        <div class="mt-3">
                            <h4>QR Code:</h4>
                            @if ($qrCodeUrl)
                                <img src="{{ $qrCodeUrl }}" alt="QR Code" class="img-fluid" />
                            @else
                                <img style="opacity: .3" src="/logo/default-qr.8c528dac.png" alt="QR Code"
                                    class="img-fluid" />
                            @endif
                        </div>
                    </div>
                </form>
            </div>
            <div class="mt-3">
                <button class="btn btn-primary" wire:click="generateQrCode" wire:loading.attr="disabled"
                    wire:target="generateQrCode" wire:loading.class="btn-secondary"> Tạo QR Code</button>
                <button class="btn btn-secondary" wire:click="resetFields">Reset</button>
                @if ($qrCodeUrl)
                    <a href="{{ $qrCodeUrl }}" download class="btn btn-success">Tải về</a>
                @endif
            </div>
        </div>
    </div>
</div>
