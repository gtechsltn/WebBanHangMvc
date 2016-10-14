﻿using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebBanHang.Models;
using WebBanHang.ViewModels;

namespace WebBanHang.Core
{
    public static class AutoMapperConfig
    {
        public static MapperConfiguration MapperConfiguration;

        public static void RegisterMappings()
        {
            MapperConfiguration = new MapperConfiguration(cfg =>
            {
                cfg.CreateMap<Product, AdminProductViewModel>();
                cfg.CreateMap<Product, AdminProductViewModel>().ReverseMap();
            });
        }
    }
}