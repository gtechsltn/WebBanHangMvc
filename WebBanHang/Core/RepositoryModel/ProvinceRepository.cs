using System.Data.Entity;
using WebBanHang.Models;

namespace WebBanHang.Core.RepositoryModel
{
    public class ProvinceRepository : RepositoryModel<Province>
    {
        public ProvinceRepository(DbContext dbContext)
            : base(dbContext)
        {
        }
    }
}