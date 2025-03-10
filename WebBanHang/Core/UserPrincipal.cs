﻿using System.Security.Principal;
using WebBanHang.Models;

namespace WebBanHang.Core
{
    public class UserPrincipal : IPrincipal
    {
        public UserPrincipal(IIdentity identity)
        {
            Identity = identity;
        }

        public IIdentity Identity
        {
            get;
            private set;
        }

        public User UserData
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