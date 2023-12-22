using System.Linq;
using System.Web.Mvc;
using WebBanHang.Core;
using WebBanHang.Core.RepositoryModel;

namespace WebBanHang.Controllers
{
    public class WidgetController : BaseController
    {
        //
        // GET: /Widget/
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Navbar()
        {
            var menus = Repository.Bind<MenuRepository>().FetchAll().OrderByDescending(item => item.Priority);
            return PartialView(menus);
        }

        public ActionResult BestSellingProduct()
        {
            return View();
        }

        public ActionResult LatestProduct()
        {
            var list = Repository.Product.GetNewProduct(9);
            return PartialView(list);
        }

        public ActionResult Search()
        {
            var model = Repository.GroupProduct.GetTopGroupProducts();
            return PartialView(model);
        }
    }
}