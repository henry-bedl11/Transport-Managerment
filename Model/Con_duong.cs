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
    
    public partial class Con_duong
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Con_duong()
        {
            this.Doan_duong = new HashSet<Doan_duong>();
        }
    
        public string Ma_con_duong { get; set; }
        public string Ten_duong { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Doan_duong> Doan_duong { get; set; }
    }
}
