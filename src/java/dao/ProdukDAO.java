/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package dao;

import model.Produk;
import util.DBUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProdukDAO {

   public List<Produk> getAllProduk(String keyword, String sortBy) throws Exception {
    List<Produk> list = new ArrayList<>();
    Connection conn = DBUtil.getConnection();

    String sql = "SELECT * FROM produk";

    if (keyword != null && !keyword.isEmpty()) {
        sql += " WHERE nama LIKE ? OR kategori LIKE ?";
    }

    // Validasi sortBy agar hanya menerima kolom tertentu
    if (sortBy != null && !sortBy.isEmpty()) {
        if (sortBy.equalsIgnoreCase("harga ASC") || sortBy.equalsIgnoreCase("harga DESC")
            || sortBy.equalsIgnoreCase("kategori ASC") || sortBy.equalsIgnoreCase("kategori DESC")) {
            sql += " ORDER BY " + sortBy;
        }
    }

    PreparedStatement ps = conn.prepareStatement(sql);

    if (keyword != null && !keyword.isEmpty()) {
        ps.setString(1, "%" + keyword + "%");
        ps.setString(2, "%" + keyword + "%");
    }

    ResultSet rs = ps.executeQuery();

    while (rs.next()) {
        Produk p = new Produk(
            rs.getInt("id"),
            rs.getString("nama"),
            rs.getString("kategori"),
            rs.getDouble("harga"),
            rs.getInt("stok")
        );
        list.add(p);
    }
    
    conn.close();
    return list;
}


    public void addProduk(Produk produk) throws Exception {
        Connection conn = DBUtil.getConnection();
        String sql = "INSERT INTO produk (nama, kategori, harga, stok) VALUES (?, ?, ?, ?)";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, produk.getNama());
        ps.setString(2, produk.getKategori());
        ps.setDouble(3, produk.getHarga());
        ps.setInt(4, produk.getStok());
        ps.executeUpdate();
        conn.close();
    }
    
    public Produk getProdukById(int id) throws Exception {
    Connection conn = DBUtil.getConnection();
    String sql = "SELECT * FROM produk WHERE id = ?";
    PreparedStatement ps = conn.prepareStatement(sql);
    ps.setInt(1, id);
    ResultSet rs = ps.executeQuery();
    
    Produk produk = null;
    if (rs.next()) {
        produk = new Produk(
            rs.getInt("id"),
            rs.getString("nama"),
            rs.getString("kategori"),
            rs.getDouble("harga"),
            rs.getInt("stok")
        );
    }
    conn.close();
    return produk;
}

public void updateProduk(Produk produk) throws Exception {
    Connection conn = DBUtil.getConnection();
    String sql = "UPDATE produk SET nama = ?, kategori = ?, harga = ?, stok = ? WHERE id = ?";
    PreparedStatement ps = conn.prepareStatement(sql);
    ps.setString(1, produk.getNama());
    ps.setString(2, produk.getKategori());
    ps.setDouble(3, produk.getHarga());
    ps.setInt(4, produk.getStok());
    ps.setInt(5, produk.getId());
    ps.executeUpdate();
    conn.close();
}
    
public void deleteProduk(int id) throws Exception {
    Connection conn = DBUtil.getConnection();
    String sql = "DELETE FROM produk WHERE id = ?";
    PreparedStatement ps = conn.prepareStatement(sql);
    ps.setInt(1, id);
    ps.executeUpdate();
    conn.close();
}

}
