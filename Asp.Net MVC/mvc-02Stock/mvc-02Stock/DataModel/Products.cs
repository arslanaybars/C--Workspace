//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace mvc_02Stock.DataModel
{
    using System;
    using System.Collections.Generic;
    
    public partial class Products
    {
        public int id { get; set; }
        public string Name { get; set; }
        public int CategoryID { get; set; }
        public decimal Price { get; set; }
        public int UnitsInStock { get; set; }
    
        public virtual Categories Categories { get; set; }
    }
}
