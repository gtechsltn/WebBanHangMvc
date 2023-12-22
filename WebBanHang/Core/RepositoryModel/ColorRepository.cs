using System.Data.Entity;
using WebBanHang.Models;

namespace WebBanHang.Core.RepositoryModel
{
    public class ColorRepository : RepositoryModel<Color>
    {
        public ColorRepository(DbContext dbContext) : base(dbContext)
        {
        }
    }
}