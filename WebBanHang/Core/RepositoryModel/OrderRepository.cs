using System.Data.Entity;
using WebBanHang.Models;

namespace WebBanHang.Core.RepositoryModel
{
    public class OrderRepository : RepositoryModel<Order>
    {
        public OrderRepository(DbContext db)
            : base(db)
        {
        }
    }
}