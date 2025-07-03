/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.ProdukDAO;
import model.Produk;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;

@WebServlet("/ProdukAddServlet")

public class ProdukAddServlet extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String nama = request.getParameter("nama");
            String kategori = request.getParameter("kategori");
            double harga = Double.parseDouble(request.getParameter("harga"));
            int stok = Integer.parseInt(request.getParameter("stok"));

            Produk produk = new Produk(0, nama, kategori, harga, stok);
            ProdukDAO dao = new ProdukDAO();
            dao.addProduk(produk);

            response.sendRedirect("ProdukListServlet");
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}
