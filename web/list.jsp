<%-- 
    Document   : list
    Created on : Jul 2, 2025, 8:32:46 PM
    Author     : akib supandi
--%>

<%@page import="model.Produk"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.text.NumberFormat, java.util.Locale" %>
<html>
    <head>
        <title>Daftar Produk</title>
        <link rel="stylesheet" href="style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
   <style> .navbar-brand {
            font-weight: bold;
        }</style>

    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-danger sticky-top" style=" height: 100px">
        <div class="container">
            <a class="navbar-brand" href="#">
              <i class="fa-solid fa-shop"></i>Akib Shop
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="index.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ProdukListServlet">Produk</a>
                    </li>
                    
                 
                   
                </ul>
            </div>
        </div>
    </nav>
        
        

        
      
        <div class="card">
            
            <div class="card-header">
                <div class="alert alert-danger"><h5> Daftar Produk </h5> </div>
                
    <form action="ProdukListServlet" method="get">
        <div class="d-flex">
            <input type="text" class="form-control col-6" style=" width: 310px" name="keyword" placeholder="Cari produk..." value="<%= request.getParameter("keyword") != null ? request.getParameter("keyword") : "" %>">
            <button class="btn btn-danger col-6 ml-2" type="submit" style="width: 150px ">Cari</button>
        </div>
        
    </form>

    <p>Urutkan berdasarkan:</p>
    <a class="btn btn-outline-primary" href="ProdukListServlet?sortBy=harga ASC">Harga (Asc)</a> |
    <a class="btn btn-outline-success" href="ProdukListServlet?sortBy=harga DESC">Harga (Desc)</a> |
    <a class="btn btn-outline-danger"   href="ProdukListServlet?sortBy=kategori ASC">Kategori (Asc)</a> |
    <a class="btn btn-outline-warning"  href="ProdukListServlet?sortBy=kategori DESC">Kategori (Desc)</a>
            </div>
            <div class="card-body">
                 <a href="tambah.jsp"><i class="fa-solid fa-plus"></i>Tambah Produk</a>
              <table class="table table-striped">
              <thead>
                  <tr class="text-center">
                <th> no</th>
                <th> Nama</th>
                <th> Kategori</th>
                <th> Harga</th>
                <th> Stok</th>
                <th> Aksi</th> 
            </tr>
              </thead>
            <%
                List<Produk> list = (List<Produk>) request.getAttribute("produkList");
                if (list != null) {
                    for (Produk p : list) {
            %>
            <%
                Locale indo = new Locale("in", "ID");
                NumberFormat formatRupiah = NumberFormat.getNumberInstance(indo);
            %>
              <tbody>
            <tr>
                <td><%= p.getId()%></td>
                <td><%= p.getNama()%></td>
                <td><%= p.getKategori()%></td>
                <td><%= "Rp " + formatRupiah.format(p.getHarga())%></td>
                <td><%= p.getStok()%></td>
                <td>
                <a  href="EditProdukServlet?id=<%= p.getId() %>"><i class="fa-solid fa-pen-to-square"></i></a> |
                 <a href="DeleteProdukServlet?id=<%= p.getId() %>" onclick="return confirm('Yakin ingin hapus produk ini?');"><i class="fa-solid fa-eraser"></i></a>
                 </td>
            </tr>
             </tbody>
            <% }
            }%>
        </table>
            </div>
        </div>
       

        <br>
       
    </body>
</html>
