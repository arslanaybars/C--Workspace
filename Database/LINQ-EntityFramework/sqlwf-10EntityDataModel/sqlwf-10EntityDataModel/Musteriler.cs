//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace sqlwf_10EntityDataModel
{
    using System;
    using System.Collections.Generic;
    
    public partial class Musteriler
    {
        public Musteriler()
        {
            this.FilmSatis = new HashSet<FilmSatis>();
        }
    
        public int MusteriNo { get; set; }
        public string MusteriAd { get; set; }
        public string MusteriSoyad { get; set; }
        public string Telefon { get; set; }
        public string Adres { get; set; }
        public bool Silindi { get; set; }
    
        public virtual ICollection<FilmSatis> FilmSatis { get; set; }
    }
}
