using System.Data.Entity;
using WebBanHang.Models;

namespace WebBanHang.Core.RepositoryModel
{
    public class MenuRepository : RepositoryModel<Menu>
    {
        public MenuRepository(DbContext db) : base(db)
        {
        }
    }
}