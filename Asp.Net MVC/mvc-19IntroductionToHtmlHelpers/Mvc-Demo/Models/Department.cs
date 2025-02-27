//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Mvc_Demo.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    
    [MetadataType(typeof(DepartmentMetaData))]
    public partial class Department
    {
        public Department()
        {
            this.Employees = new HashSet<Employee>();
        }
    
        public int Id { get; set; }
        public string Name { get; set; }
    
        public virtual ICollection<Employee> Employees { get; set; }
    }

    public class DepartmentMetaData
    {
        [Display(Name = "Department Name")]
        public String Name { get; set; }
    }
}
