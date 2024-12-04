<!-- sidebarrrr -->

<div class="sidebar" style="background-color: #3356A4;">
    <!-- Sidebar user (optional) -->
    <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
            <img src="user.png" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
            <a href="profile.php" class="d-block">Rheina Putri Ferdiansyah</a>
        </div>
    </div>


    <!-- SidebarSearch Form -->
    <div class="form-inline" style="padding: 9px;">
        <div class="input-group" data-widget="sidebar-search">
            <input class="form-control form-control-sidebar-light" type="search" placeholder="Search" aria-label="Search">
            <div class="input-group-append-light">
                <button class="btn btn-sidebar">
                    <i class="fas fa-search fa-fw" style="color: white;"></i>
                </button>
            </div>
        </div>
        <div class="sidebar-search-results">
            <div class="list-group"><a href="#" class="list-group-item-light">
                    <div class="search-title"><strong class="text-light"></strong>N<strong class="text-light"></strong>o<strong class="text-light"></strong> <strong class="text-light"></strong>e<strong class="text-light"></strong>l<strong class="text-light"></strong>e<strong class="text-light"></strong>m<strong class="text-light"></strong>e<strong class="text-light"></strong>n<strong class="text-light"></strong>t<strong class="text-light"></strong> <strong class="text-light"></strong>f<strong class="text-light"></strong>o<strong class="text-light"></strong>u<strong class="text-light"></strong>n<strong class="text-light"></strong>d<strong class="text-light"></strong>!<strong class="text-light"></strong></div>
                    <div class="search-path"></div>
                </a></div>
        </div>
    </div>

    <!-- Sidebar Menu -->
    <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
            <!-- Dashboard -->
            <li class="nav-item">
                <a href="index.php" class="nav-link">
                    <i class="nav-icon fas fa-tachometer-alt"></i>
                    <p>Dashboard</p>
                </a>
            </li>
            <!-- Kategori Buku -->
            <li class="nav-item">
                <a href="index.php?page=kategori" class="nav-link">
                    <i class="nav-icon fas fa-bookmark"></i>
                    <p>Kompetisi Mahasiswa</p>
                </a>
            </li>
            <!-- Buku -->
            <li class="nav-item border-bottom">
                <a href="index.php?page=buku" class="nav-link">
                    <i class="nav-icon fas fa-book"></i>
                    <p>Prestasi Mahasiswa</p>
                </a>
            </li>
            <!-- Logout -->
            <li class="nav-item">
                <a href="action/auth.php?act=logout" class="nav-link">
                    <i class="nav-icon fas fa-sign-out-alt"></i>
                    <p>Logout</p>
                </a>
            </li>
        </ul>
    </nav>
    <!-- /.sidebar-menu -->
</div>