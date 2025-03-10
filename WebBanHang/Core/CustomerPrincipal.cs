﻿using System.Security.Principal;
using WebBanHang.Models;

namespace WebBanHang.Core
{
    public class CustomerPrincipal : IPrincipal
    {
        public CustomerPrincipal(IIdentity identity)
        {
            Identity = identity;
        }

        public IIdentity Identity
        {
            get;
            private set;
        }

        public Customer UserData
        {
            get;
            set;
        }

        public bool IsInRole(string role)
        {
            return true;
        }
    }
}