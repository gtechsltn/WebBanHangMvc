# Course Project (đồ án môn học) Programming and Web Development using the ASP.NET MVC

+ [Đồ án môn học Lập Trình Web ASP.Net MVC](https://github.com/hienlt0610/mvc-ban-hang)
+ [Lập trình dự án Website bán hàng ASP.NET MVC 4](https://tedu.com.vn/khoa-hoc/lap-trinh-du-an-website-ban-hang-aspnet-mvc-4-1.html)
+ [Xây dụng Website Bán Hàng ASP.NET MVC](https://www.youtube.com/playlist?list=PL88xOdcMevRsEUEaZ7KQ1-8s3bxrw1lfb)
+ [Web Bán Hàng ASP.NET MVC 5](https://sharecode.vn/source-code/web-ban-hang-aspnet-mvc-5-7858.htm)
+ [Full source code Website Bán Máy Tính Laptop Asp .Net MVC + Báo cáo (Có video hướng dẫn)](https://topcode.vn/source-code/full-code-website-ban-game-co-bao-cao-demo-asp-net-core-mvc-45757.htm)

# Business Domain
+ E-commerce website

# Development environment
+ Windows 11
+ Visual Studio 2019
+ SQL Server 2019
+ SQL Server Management Studio (SSMS) 18.11.1
+ Google Chrome
+ IIS 10

# Technical Stack
+ ASP.NET MVC
+ ASP.NET Web API
+ SQL Server (T-SQL)
+ Entity Framework
+ Stored Procedure
+ AdminLTE
+ HTML, CSS, JavaScript
+ jQuery and Bootstrap
+ AJAX, JSON and XML
+ HTTPS and SSL
+ Google Mail (đăng ký, đăng nhập, liên hệ, đặt hàng, thắc mắc, khiếu nại, bảo hành, thông báo, quảng cáo)
+ Windows Server and IIS

# How to run source code
+ Download source code from GitHub link https://github.com/gtechsltn/WebBanHangMvc/
+ Open SSMS: Run Database\script.sql to create database (DB) on localhost
  + Authentication Type: Windows Authentication
+ Open VS 2019
  + Open WebBanHang.sln
  + Open Web.config: change Connection String to point to the DB on localhost
```
<configuration>
    <connectionStrings>
        <add name="WebBanHangMvcConnString" connectionString="Data Source=.;Initial Catalog=WebBanHangMvc;Integrated Security=true" />
    </connectionStrings>
</configuration>
```
  + Chạy debug: F5

# Deployment
+ VS 2019: Publish using **File System** method, for example **D:\WebBanHang\Publish**
+ Tạo Application Pool: WebBanHang (.NET CLR Version v4.0.30319, Integrated)
+ Tạo Web Application: WebBanHang (HTTPS + SSL Certificate, port 443 + IIS Express Development Certificate) => https://localhost/

# Testing
+ Google Chrome: Mở link https://localhost/
