﻿using System.Web;
using System.Web.Mvc;

namespace mvc_01Ornek
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}