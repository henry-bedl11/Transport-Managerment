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
    
    public partial class Giao_lo
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Giao_lo()
        {
            this.Doan_duong = new HashSet<Doan_duong>();
            this.Doan_duong1 = new HashSet<Doan_duong>();
        }
    
        public string Ma_giao_lo { get; set; }
        public Nullable<double> @long { get; set; }
        public Nullable<double> lat { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Doan_duong> Doan_duong { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Doan_duong> Doan_duong1 { get; set; }
    }
}