﻿using System;
using System.ComponentModel.DataAnnotations;

namespace WebBanHang.ViewModels
{
    public class AdminLoginViewModel
    {
        [Required(ErrorMessage = "Vui lòng nhập Tài khoản")]
        public String Username { get; set; }

        [Required(ErrorMessage = "Vui lòng nhập Mật khẩu")]
        [MaxLength(16, ErrorMessage = "Mật khẩu không quá 16 ký tự")]
        public String Password { get; set; }

        public bool Remember { get; set; }
    }
}