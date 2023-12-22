using System.Data.Entity;
using WebBanHang.Models;

namespace WebBanHang.Core.RepositoryModel
{
    public class PaymentRepository : RepositoryModel<Payment>
    {
        public PaymentRepository(DbContext dbContext)
            : base(dbContext)
        {
        }
    }
}