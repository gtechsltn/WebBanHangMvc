using System.Web.Mvc;
using WebBanHang.Core;

namespace WebBanHang.Areas.Admin.Controllers
{
    [Security]
    public class UploadController : AdminBaseController
    {
        //
        // GET: /Admin/Upload/
        public ActionResult Index()
        {
            return View();
        }
    }
}