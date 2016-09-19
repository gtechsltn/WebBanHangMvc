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
    
    public partial class Customer
    {
        public Customer()
        {
            this.Carts = new HashSet<Cart>();
            this.Comments = new HashSet<Comment>();
            this.Contacts = new HashSet<Contact>();
        }
    
        public int CustomerID { get; set; }
        public Nullable<long> FacebookID { get; set; }
        public string GoogleID { get; set; }
        public string Username { get; set; }
        public string Passwrord { get; set; }
        public string FullName { get; set; }
        public string Email { get; set; }
        public string Address { get; set; }
        public Nullable<int> ProvinceID { get; set; }
        public Nullable<int> DistrictID { get; set; }
        public string Phone { get; set; }
        public string Status { get; set; }
        public string VerificationCode { get; set; }
        public System.DateTime RegistrationDate { get; set; }
    
        public virtual ICollection<Cart> Carts { get; set; }
        public virtual ICollection<Comment> Comments { get; set; }
        public virtual ICollection<Contact> Contacts { get; set; }
        public virtual District District { get; set; }
        public virtual Province Province { get; set; }
    }
}