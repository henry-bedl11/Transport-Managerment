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
    
    public partial class Tuyen_tau_xe
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Tuyen_tau_xe()
        {
            this.Chuyen_tau_xe = new HashSet<Chuyen_tau_xe>();
            this.HD_ve_ngay = new HashSet<HD_ve_ngay>();
            this.Tuyen_tau_dien = new HashSet<Tuyen_tau_dien>();
            this.Tuyen_xe_bus = new HashSet<Tuyen_xe_bus>();
            this.Ve_le = new HashSet<Ve_le>();
            this.Ve_thang = new HashSet<Ve_thang>();
        }
    
        public string Ma_tuyen { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Chuyen_tau_xe> Chuyen_tau_xe { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<HD_ve_ngay> HD_ve_ngay { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Tuyen_tau_dien> Tuyen_tau_dien { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Tuyen_xe_bus> Tuyen_xe_bus { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Ve_le> Ve_le { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Ve_thang> Ve_thang { get; set; }
    }
}
