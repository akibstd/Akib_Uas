<%-- 
    Document   : tambah
    Created on : Jul 2, 2025, 8:32:39 PM
    Author     : akib supandi
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Tambah Produk</title>
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
    
    
    
    <div class="card mt-2">
         
        <div class="card-header">
            <div class="alert alert-danger"><h5> tambah Produk </h5> </div>
        </div>
        <div class="card-body">
            <form action="ProdukAddServlet" method="post" >
                <div class="d-flex" > 
                     <div class="mb-3 col-6">
                  <label>Nama Produk:</label>
                  <input class="form-control" type="text" name="nama" required>
              </div>
                    
              <div class="mb-3 col-6" style=" margin-left: 10px">
                  <label>Kategori:</label>
                  <input type="text" class="form-control" name="kategori" required>
              </div>
                </div>
             
                <div class="d-flex"> 
                    
                    <div class="mb-3 col-6 ">
                        <label>Harga:</label>
                        <input type="number" class="form-control" step="0.01" name="harga" required>
                    </div>

                    <div class="mb-3 col-6 ">
                        <label>Stok:</label>
                        <input type="number" class="form-control" style=" margin-left: 10px" name="stok" required>
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

