namespace dienthoaididong.Models.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("sanpham")]
    public partial class sanpham
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public sanpham()
        {
            chitiethoadons = new HashSet<chitiethoadon>();
        }

        [Key]
        public int sanpham_id { get; set; }

        [StringLength(50)]
        public string sanpham_name { get; set; }

        public int? gia_sanpham { get; set; }

        public int? soluong_sp { get; set; }

        [StringLength(50)]
        public string theloai_id { get; set; }

        [Column(TypeName = "text")]
        public string hinhanh_sp { get; set; }

        [Column(TypeName = "text")]
        public string hinhanh_sp1 { get; set; }

        [Column(TypeName = "text")]
        public string hinhanh_sp3 { get; set; }

        [Column(TypeName = "text")]
        public string hinhanh_sp4 { get; set; }

        [Column(TypeName = "text")]
        public string kichthuoc_hinhanh { get; set; }

        [Column(TypeName = "text")]
        public string camera_truoc { get; set; }

        [Column(TypeName = "text")]
        public string camera_sau { get; set; }

        [StringLength(200)]
        public string he_dieu_hanh { get; set; }

        [StringLength(200)]
        public string cpu { get; set; }

        [StringLength(200)]
        public string ram { get; set; }

        [StringLength(200)]
        public string bo_nho_trong { get; set; }

        [StringLength(200)]
        public string the_nho { get; set; }

        [StringLength(200)]
        public string sim { get; set; }

        [StringLength(200)]
        public string ket_noi { get; set; }

        [StringLength(100)]
        public string pin { get; set; }

        [StringLength(500)]
        public string chuthich { get; set; }

        public int? moi { get; set; }

        public int? style { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<chitiethoadon> chitiethoadons { get; set; }

        public virtual theloaisp theloaisp { get; set; }
    }
}
