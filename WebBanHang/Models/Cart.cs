//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebBanHang.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Cart
    {
        public Cart()
        {
            this.CartDetails = new HashSet<CartDetail>();
        }
    
        public int CartID { get; set; }
        public string CookieID { get; set; }
        public Nullable<int> CustomerID { get; set; }
        public System.DateTime CreateDate { get; set; }
    
        public virtual Customer Customer { get; set; }
        public virtual ICollection<CartDetail> CartDetails { get; set; }
    }
}
