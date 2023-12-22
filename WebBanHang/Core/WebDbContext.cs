using System;
using System.Data.Entity;

namespace WebBanHang.Core
{
    public class WebDbContext : DbContext
    {
        public WebDbContext(String connectionString) : base(connectionString)
        {
        }
    }
}