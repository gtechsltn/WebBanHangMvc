using System.Linq;
using System.Web.Mvc;
using WebBanHang.Core;

namespace WebBanHang.Areas.Admin.Controllers
{
    public class HomeController : AdminBaseController
    {
        [Security]
        public ActionResult Index()
        {
            ViewBag.Orders = Repository.Order.FetchAll().OrderByDescending(o => o.OrderDate).Take(10);
            ViewBag.Products = Repository.Product.FetchAll();
            ViewBag.Customers = Repository.Customer.FetchAll();
            return View("Index");
        }
    }
}