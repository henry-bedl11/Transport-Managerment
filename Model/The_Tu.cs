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
    
    public partial class The_Tu
    {
        public string Ma_the_tu { get; set; }
        public Nullable<System.DateTime> Ngay_mua { get; set; }
        public string Ma_hanh_khach { get; set; }
    
        public virtual Hanh_Khach Hanh_Khach { get; set; }
    }
}