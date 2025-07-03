package controller;

import dao.ProdukDAO;
import model.Produk;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;

@WebServlet("/UpdateProdukServlet")
public class UpdateProdukServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            String nama = request.getParameter("nama");
            String kategori = request.getParameter("kategori");
            double harga = Double.parseDouble(request.getParameter("harga"));
            int stok = Integer.parseInt(request.getParameter("stok"));

            Produk produk = new Produk(id, nama, kategori, harga, stok);
            ProdukDAO dao = new ProdukDAO();
            dao.updateProduk(produk);

            response.sendRedirect("ProdukListServlet");
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}
