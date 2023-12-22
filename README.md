# Đồ án môn học lập trình Web ASP.NET MVC

+ [Đồ án môn học Lập Trình Web ASP.Net MVC](https://github.com/hienlt0610/mvc-ban-hang)
+ [Lập trình dự án Website bán hàng ASP.NET MVC 4](https://tedu.com.vn/khoa-hoc/lap-trinh-du-an-website-ban-hang-aspnet-mvc-4-1.html)
+ [Xây dụng Website Bán Hàng ASP.NET MVC](https://www.youtube.com/playlist?list=PL88xOdcMevRsEUEaZ7KQ1-8s3bxrw1lfb)
+ [Web Bán Hàng ASP.NET MVC 5](https://sharecode.vn/source-code/web-ban-hang-aspnet-mvc-5-7858.htm)
+ [Full source code Website Bán Máy Tính Laptop Asp .Net MVC + Báo cáo (Có video hướng dẫn)](https://topcode.vn/source-code/full-code-website-ban-game-co-bao-cao-demo-asp-net-core-mvc-45757.htm)

# Nghiệp vụ dự án
+ Website bán hàng

# Môi trường phát triển
+ Windows 11
+ Visual Studio 2019
+ SQL Server 2019
+ SQL Server Management Studio (SSMS) 18.11.1
+ Google Chrome
+ IIS 10

# Công nghệ dự án sử dụng
+ ASP.NET MVC
+ ASP.NET Web API
+ AdminLTE
+ HTML, CSS, JavaScript
+ jQuery and Ajax
+ HTTPS and SSL
+ JSON and XML
+ Google Mail (đăng ký, đăng nhập)

# Các bước để chạy dự án
+ Tải source code về bằng Git và GitHub từ link https://github.com/gtechsltn/WebBanHangMvc/
+ Mở SSMS: Chạy tệp Database\script.sql để tạo database
+ Mở VS 2019
  + Mở WebBanHang.sln
  + Mở Web.config thay đổi connection string
  + Chạy debug: F5

# Triển khai:
+ VS 2019: Publish to a folder, for example **D:\WebBanHang\Publish**
+ Tạo Application Pool: WebBanHang
+ Tạo Web Application: WebBanHang, HTTPS + SSL Certificate (port 443) + IIS Express Development Certificate => https://localhost/

# Testing
+ Google Chrome: Mở link https://localhost/
