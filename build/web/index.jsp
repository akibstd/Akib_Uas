<%-- 
    Document   : index
    Created on : Jul 2, 2025, 8:32:31 PM
    Author     : akib supandi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TokoOnline - Manajemen barang Online</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        .hero-section {
            background: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)), url('https://images.unsplash.com/photo-1551434678-e076c223a692?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80');
            background-size: cover;
            background-position: center;
            color: white;
            padding: 100px 0;
            margin-bottom: 50px;
        }
        
        .feature-icon {
            font-size: 2.5rem;
            margin-bottom: 1rem;
            color: #0d6efd;
        }
        
        .navbar-brand {
            font-weight: bold;
        }
        
        .btn-primary {
            padding: 10px 25px;
        }
    </style>
</head>
<body>
    <!-- Navigation Bar -->
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

    <!-- Hero Section -->
    <section class="hero-section text-center ">
        <div class="container">
            <h1 class="display-4 fw-bold mb-4">Manajemen Toko Online Modern</h1>
            <p class="lead mb-5">Kelola produk, stok, dan penjualan toko Anda dengan mudah dan efisien</p>
            <div class="d-flex justify-content-center gap-3">
                <a href="ProdukListServlet" class="btn btn-danger btn-lg">
                    <i class="fas fa-sign-in-alt me-2"></i>Mulai Sekarang
                </a>
               
            </div>
        </div>
    </section>

    <!-- Features Section -->
    <section id="features" class="py-5">
        <div class="container">
            <h2 class="text-center mb-5">Fitur Unggulan Kami</h2>
            
            <div class="row g-4">
                <div class="col-md-4">
                    <div class="card h-100 border-0 shadow-sm">
                        <div class="card-body text-center p-4">
                            <div class="feature-icon">
                                <i class="fas fa-boxes"></i>
                            </div>
                            <h3 class="h4">Manajemen Produk</h3>
                            <p class="text-muted">Kelola produk Anda dengan mudah. Tambah, edit, hapus, dan cari produk dengan cepat.</p>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="card h-100 border-0 shadow-sm">
                        <div class="card-body text-center p-4">
                            <div class="feature-icon">
                                <i class="fas fa-chart-line"></i>
                            </div>
                            <h3 class="h4">Laporan Stok</h3>
                            <p class="text-muted">Pantau stok produk secara real-time dan dapatkan notifikasi ketika stok hampir habis.</p>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="card h-100 border-0 shadow-sm">
                        <div class="card-body text-center p-4">
                            <div class="feature-icon">
                                <i class="fas fa-search"></i>
                            </div>
                            <h3 class="h4">Pencarian Canggih</h3>
                            <p class="text-muted">Temukan produk dengan cepat menggunakan filter kategori dan sorting yang fleksibel.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- How It Works Section -->
    <section class="py-5 bg-light">
        <div class="container">
            <h2 class="text-center mb-5">Cara Kerja Sistem</h2>
            
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <img src="https://images.unsplash.com/photo-1600880292203-757bb62b4baf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80" 
                         alt="Dashboard TokoOnline" class="img-fluid rounded shadow">
                </div>
                <div class="col-lg-6 mt-4 mt-lg-0">
                    <div class="ps-lg-5">
                        <div class="d-flex mb-4">
                            <div class="me-4">
                                <div class="bg-primary text-white rounded-circle d-flex align-items-center justify-content-center" style="width: 50px; height: 50px;">
                                    <span class="h4 mb-0">1</span>
                                </div>
                            </div>
                            <div>
                                <h4>Login ke Dashboard</h4>
                                <p class="text-muted">Masuk ke sistem menggunakan akun admin Anda.</p>
                            </div>
                        </div>
                        
                        <div class="d-flex mb-4">
                            <div class="me-4">
                                <div class="bg-primary text-white rounded-circle d-flex align-items-center justify-content-center" style="width: 50px; height: 50px;">
                                    <span class="h4 mb-0">2</span>
                                </div>
                            </div>
                            <div>
                                <h4>Kelola Produk</h4>
                                <p class="text-muted">Tambah produk baru, edit informasi produk, atau hapus produk yang tidak lagi tersedia.</p>
                            </div>
                        </div>
                        
                        <div class="d-flex">
                            <div class="me-4">
                                <div class="bg-primary text-white rounded-circle d-flex align-items-center justify-content-center" style="width: 50px; height: 50px;">
                                    <span class="h4 mb-0">3</span>
                                </div>
                            </div>
                            <div>
                                <h4>Pantau Stok</h4>
                                <p class="text-muted">Lihat laporan stok dan kelola persediaan produk Anda.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Call to Action -->
    <section class="py-5 bg-danger text-white">
        <div class="container text-center">
            <h2 class="mb-4">Siap Mengelola Toko Online Anda?</h2>
            <p class="lead mb-5">Mulai gunakan sistem manajemen toko online kami hari ini dan rasakan kemudahannya!</p>
            <a  href="ProdukListServlet" class="btn btn-light btn-lg px-4">
                <i class="fas fa-rocket me-2" ></i>Mulai Sekarang
            </a>
        </div>
    </section>

    <!-- Footer -->
    <footer id="contact" class="py-5 bg-dark text-white">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 mb-4 mb-lg-0">
                    <h5><i class="fas fa-store me-2"></i>TokoOnline</h5>
                    <p class="text-muted mt-3">Sistem manajemen toko online modern yang membantu Anda mengelola produk dan stok dengan mudah.</p>
                </div>
                <div class="col-lg-4 mb-4 mb-lg-0">
                    <h5>Kontak Kami</h5>
                    <ul class="list-unstyled text-muted mt-3">
                    
                        <li class="mb-2"><i class="fas fa-envelope me-2"></i> info@tokoonline.com</li>
                    </ul>
                </div>
                <div class="col-lg-4">
                    <h5>Tautan Cepat</h5>
                    <ul class="list-unstyled text-muted mt-3">
                        <li class="mb-2"><a href="/TokoOnline/products" class="text-decoration-none text-muted">Manajemen Produk</a></li>
                        <li class="mb-2"><a href="#features" class="text-decoration-none text-muted">Fitur</a></li>
                        <li class="mb-2"><a href="#" class="text-decoration-none text-muted">Syarat & Ketentuan</a></li>
                        <li class="mb-2"><a href="#" class="text-decoration-none text-muted">Kebijakan Privasi</a></li>
                    </ul>
                </div>
            </div>
            <hr class="my-4 bg-secondary">
            <div class="text-center text-muted">
                <p class="mb-0">&copy; 2023 Akib Dev Tecnologia</p>
            </div>
        </div>
    </footer>

    <!-- Bootstrap 5 JS Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
