using System.Data.Entity;
using WebBanHang.Models;

namespace WebBanHang.Core.RepositoryModel
{
    public class WardRepository : RepositoryModel<Ward>
    {
        public WardRepository(DbContext dbContext)
            : base(dbContext)
        {
        }
    }
}