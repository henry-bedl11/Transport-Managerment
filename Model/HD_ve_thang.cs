//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TransportManagerment.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class HD_ve_thang
    {
        public string Ma_ve { get; set; }
        public System.DateTime Ngay_su_dung { get; set; }
        public System.TimeSpan Gio_len { get; set; }
        public Nullable<System.TimeSpan> Gio_xuong { get; set; }
        public string Ga_tram_len { get; set; }
        public string Ga_tram_xuong { get; set; }
    
        public virtual Ga_Tram Ga_Tram { get; set; }
        public virtual Ga_Tram Ga_Tram1 { get; set; }
        public virtual Ve Ve { get; set; }
    }
}
