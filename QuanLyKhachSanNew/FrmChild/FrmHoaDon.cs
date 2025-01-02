﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyKhachSanNew.FrmChild
{
    public partial class FrmHoaDon : Form
    {
        private string tenKhach;
        private string diaChi;
        private string dienThoai;
        private string maKhach;
        private string maPhong;
        private string ngayDen;
        private string ngayDi;
        private int soDem;
        private int tongTien;
        private int giaPhong;
        private int giaDichVu;
        private int tienDatCoc;
        public FrmHoaDon(string tenKhach, string diaChi, string dienThoai, string maKhach,
                     string maPhong, string ngayDen, string ngayDi, int soDem, int tongTien, int giaPhong, int giaDichVu, int tienDatCoc)
        {
            InitializeComponent();
            pictureLogo.SizeMode = PictureBoxSizeMode.StretchImage;

            this.tenKhach = tenKhach;
            this.diaChi = diaChi;
            this.dienThoai = dienThoai;
            this.maKhach = maKhach;
            this.maPhong = maPhong;
            this.ngayDen = ngayDen;
            this.ngayDi = ngayDi;
            this.soDem = soDem;
            this.tongTien = tongTien;
            this.giaPhong = giaPhong;
            this.giaDichVu = giaDichVu;
            this.tienDatCoc = tienDatCoc;

            // Hiển thị dữ liệu
            LoadData();
        }

        private void LoadData()
        {
            label30.Text = tenKhach;
            label31.Text = diaChi;
            label32.Text = dienThoai;
            label33.Text = maKhach;
            label25.Text = maPhong;
            label26.Text = ngayDen;
            label27.Text = ngayDi;
            label28.Text = soDem.ToString();
            label34.Text = DateTime.Now.ToString("dd/MM/yyyy"); // Ngày lập hóa đơn
            label29.Text = "Thu Ngân"; // Bạn có thể thay đổi thành tên thu ngân
            label35.Text = tongTien.ToString("N0") + " VND"; // Format số tiền

            label37.Text = giaPhong.ToString("N0") + " VND";
            label40.Text = giaDichVu.ToString("N0") + " VND";
            label41.Text = tienDatCoc.ToString("N0") + " VND";
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            
        }

        private void label14_Click(object sender, EventArgs e)
        {

        }

        private void label36_Click(object sender, EventArgs e)
        {

        }

        private void label38_Click(object sender, EventArgs e)
        {

        }

        private void FrmHoaDon_Load(object sender, EventArgs e)
        {

        }
    }
}
