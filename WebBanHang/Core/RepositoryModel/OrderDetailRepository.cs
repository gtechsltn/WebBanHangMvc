using System.Data.Entity;
using WebBanHang.Models;

namespace WebBanHang.Core.RepositoryModel
{
    public class OrderDetailRepository : RepositoryModel<OrderDetail>
    {
        public OrderDetailRepository(DbContext dbContext)
            : base(dbContext)
        {
        }
    }
}