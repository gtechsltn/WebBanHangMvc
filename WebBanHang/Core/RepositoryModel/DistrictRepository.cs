﻿using System.Data.Entity;
using WebBanHang.Models;

namespace WebBanHang.Core.RepositoryModel
{
    public class DistrictRepository : RepositoryModel<District>
    {
        public DistrictRepository(DbContext dbContext)
            : base(dbContext)
        {
        }
    }
}