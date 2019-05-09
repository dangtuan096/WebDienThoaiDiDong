namespace dienthoaididong.Models.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("khachhang")]
    public partial class khachhang
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public khachhang()
        {
            hoadons = new HashSet<hoadon>();
        }

        [Key]
        public int khachhang_id { get; set; }

        [StringLength(50)]
        public string khachhang_name { get; set; }

        [Column(TypeName = "date")]
        public DateTime? khachhang_ns { get; set; }

        [StringLength(50)]
        public string khachhang_diachi { get; set; }

        [StringLength(15)]
        public string khachhang_sdt { get; set; }

        [StringLength(50)]
        public string khachhang_taikhoan { get; set; }

        [StringLength(50)]
        public string khachhang_matkhau { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<hoadon> hoadons { get; set; }
    }
}
