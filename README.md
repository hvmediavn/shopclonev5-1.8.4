# Cách set up
* Config nằm trong ```config/config.php```
## Config cơ sở dữ liệu
```php
if (!$this->ketnoi)
        {
            $this->ketnoi = mysqli_connect('localhost', 'user', 'password', 'dbname') or die ('Vui lòng kết nối đến DATABASE');
            mysqli_query($this->ketnoi, "set names 'utf8'");
        }
    }
````
* Các bạn config theo thứ tự ```'host', 'username', 'password', 'dbname'```
## Config domain
```php
$base_url = 'http://localhost/'; // Thay url web bạn
```
# Config nạp thẻ ( card1s.vn )
* Lên website: https://card1s.vn/ tạo 1 tài khoản
* Vào mục KẾT NỐI API và thêm website của mình vào
* Vào phần nạp thẻ ở trang quan trị và nhập theo định dạng partner_id|partner_key ( partner_id & partner_key sẽ được cấp khi bạn kết nối api ở card1s.vn )
## Chức năng
* Check live clone, via, gmail, hotmail, yahoo.
* Thanh toán tự động qua Ví MOMO, Ví Zalo Pay.
* Thanh toán tự động qua thẻ cào điện thoại.
* Tích hợp API cho website khác.
* Kết nối sản phẩm từ website khác về website của quý khách.
* Công cụ check live fb, gmail, hotmail, yahoo, get uid facebook, get 2fa.
* Chức năng hoa hồng giới thiệu cho CTV.
* Thêm/xoá/sửa category và sản phẩm cần kinh doanh.
* Thêm/xoá/sửa tài khoản cần bán.
* Upload file backup hàng loạt, nhiều định dạng file backup.
* Tuỳ chỉnh ngôn ngữ tại trang quản trị.
* ON/OFF Lading Page.
* Tự động xóa file backup, tài nguyên, đơn hàng đã mua sau 30 ngày.
* Tuỳ chỉnh màu website.
* Giảm giá mua cho từng thành viên.
* Trang quản trị đầy đủ tính năng quản trị, thay đổi mọi thông tin website trực tiếp tại trang quản trị.
* Ghi lại hành động, dòng tiền khách hàng.
* Bảo mật chống bug, gian lận, cheat...
* Bảo mật chống bug, gian lận, cheat...
* ON/OFF chức năng tự tạo giao dịch ảo.
# Mã nguồn của CMSNT.CO - Team Leader Nguyễn Thành
### Vui lòng không sử dụng vào việc KINH DOANH BẤT HỢP PHÁP
### Mình sẽ không chịu trách nhiệm nếu các bạn vi phạm các quy định sử dụng code sau đây:
* Sử dụng dịch vụ để thực hiện các hành vi vi phạm pháp luật của Nhà nước CHXHCN Việt Nam hiện hành và các quy định quốc tế đang được áp dụng tại Việt Nam.
* Sử dụng dịch vụ để truyền bá các nội dung nhạy cảm, văn hóa phẩm đồi trụy, ảnh hưởng đến thuần phong mỹ tục Việt Nam.
* Phát tán và lưu trữ các loại mã độc nhằm mục đích tấn công website khác, hoặc mục đích phá hoại hệ thống của FUTE như Botnet, DDoS, Malware, Virus, Phishing. Bao gồm trường hợp website chứa mã độc.
### Lưu ý 
* Đây là project mình share cho các bạn vui lòng không bán dưới mọi hình thức
* Mã nguồn đã được sửa lại để tránh bug nhưng vẫn khuyên các bạn không sử dụng vào việc kinh doanh
* Các bạn có thể mua mã nguồn để ủng hộ CMSNT.CO tại đây --> https://www.cmsnt.co/2021/04/shopclone5-ma-nguon-ban-tai-khoan.html
## Liên hệ mình
* Email: refresh.official@protonmail
