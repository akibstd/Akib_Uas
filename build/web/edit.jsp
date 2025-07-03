<%-- 
    Document   : edit
    Created on : Jul 2, 2025, 9:10:39 PM
    Author     : akib supandi
--%>

<%@page import="model.Produk"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Produk produk = (Produk) request.getAttribute("produk");
%>
<html>
<head>
    <title>Edit Produk</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
</head>
<body>
    <h2>Edit Produk</h2>

    <div class="card mt-2">
        <div class="card-header">
            <div class="alert alert-danger"><h5> edit Produk </h5> </div>
        </div>
        <div class="card-body">
            <form action="ProdukAddServlet" method="post" >
                
                <input type="hidden" name="id" value="<%= produk.getId() %>">
                
                <div class="d-flex" > 
                     <div class="mb-3 col-6">
                  <label>Nama Produk:</label>
                  <input class="form-control" type="text" name="nama" value="<%= produk.getNama() %>" required>
              </div>
                    
              <div class="mb-3 col-6" style=" margin-left: 10px">
                  <label>Kategori:</label>
                  <input type="text" class="form-control" name="kategori" value="<%= produk.getKategori() %>" required>
              </div>
                </div>
             
                <div class="d-flex"> 
                    
                    <div class="mb-3 col-6 ">
                        <label>Harga:</label>
                        <input type="number" class="form-control" step="0.01" name="harga" value="<%= produk.getHarga() %>" required>
                    </div>

                    <div class="mb-3 col-6 ">
                        <label>Stok:</label>
                        <input type="number" class="form-control" style=" margin-left: 10px" name="stok" value="<%= produk.getStok() %>" required>
                    </div>
                </div>
                <button class="btn btn-danger"  type="submit">Simpan</button>
    </form>
        </div>
    </div>
   

    <br>
    <a href="ProdukListServlet">Kembali ke Daftar Produk</a>
</body>
</html>

