<!-- Dashboard mahasiswa -->
<section class="content-header">
    <div class="card">
        <div class="col-sm-12" style="padding: 10px;">
            <ol class="breadcrumb float-sm-left" style="padding: 0; margin: 0;">
                <li class="breadcrumb-item">
                    <span class="fas fa-home" style="margin-right: 5px;"></span>
                    <a href="#" style="text-decoration: none; color: inherit;">PresMa Polinema</a>
                </li>
                <li class="breadcrumb-item active">Dashboard</li>
            </ol>
        </div>
    </div>
</section>

<!-- Main content -->
<section class="content">
    <!-- Default box -->
    <div class="card">
        <div class="card-header">
            <h3 class="card-title" style="color: #1F6D9D; "><b>Dashboard</b></h3>

            <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                    <i class="fas fa-minus"></i>
                </button>
                <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
                    <i class="fas fa-times"></i>
                </button>
            </div>
        </div>

        <div class="card-body" style="padding: 5px; margin: 8px">
            <p><b>Selamat Datang Rheina Putri,</b> Anda login sebagai Mahasiswa</p>
        </div>

        <!-- Info boxes -->
        <div class="row" style="margin: 15px;">
            <div class="col-12 col-sm-6 col-md-4">
                <div class="info-box">
                    <span class="info-box-icon bg-info elevation-1"><i class="fas fa-cog"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-number">500</span>
                        <span class="info-box-text">Kompetisi Mahasiswa</span>
                    </div>
                </div>
            </div>

            <div class="col-12 col-sm-6 col-md-4">
                <div class="info-box mb-3">
                    <span class="info-box-icon bg-success elevation-1"><i class="fas fa-shopping-cart"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-number">760</span>
                        <span class="info-box-text">Mahasiswa Berprestasi</span>
                    </div>
                </div>
            </div>

            <div class="col-12 col-sm-6 col-md-4">
                <div class="info-box mb-3">
                    <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-users"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-number">2000</span>
                        <span class="info-box-text">Prestasi Mahasiswa</span>
                    </div>
                </div>
            </div>
        </div>
        <!-- Tambahkan ini di bagian <head> atau sebelum </body> -->
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>


        <div style="display: flex; justify-content: space-between; flex-wrap: wrap; padding:20px;">
            <!-- chart 1 -->
            <div class="card" style="padding: 15px; width: 48%; margin: 5px;">
                <div class="card-header border-0">
                    <div class="d-flex justify-content-between">
                        <h3 class="card-title">Online Store Visitors</h3>
                        <a href="javascript:void(0);">View Report</a>
                    </div>
                </div>

                <div class="card-body">
                    <div class="d-flex">
                        <p class="d-flex flex-column">
                            <span class="text-bold text-lg">820</span>
                            <span>Visitors Over Time</span>
                        </p>
                        <p class="ml-auto d-flex flex-column text-right">
                            <span class="text-success">
                                <i class="fas fa-arrow-up"></i> 12.5%
                            </span>
                            <span class="text-muted">Since last week</span>
                        </p>
                    </div>

                    <div class="position-relative mb-4">
                        <canvas id="visitors-chart" height="200" width="400"></canvas>
                    </div>

                    <div class="d-flex flex-row justify-content-end">
                        <span class="mr-2">
                            <i class="fas fa-square text-primary"></i> This Week
                        </span>
                        <span>
                            <i class="fas fa-square text-gray"></i> Last Week
                        </span>
                    </div>
                </div>
            </div>
            <!-- Chart 2 -->
            <div class="card card-lightblue" style="width: 48%; margin: 3px;">
                <div class="card-header">
                    <h3 class="card-title">Donut Chart</h3>

                    <div class="card-tools">
                        <button type="button" class="btn btn-tool" data-card-widget="collapse">
                            <i class="fas fa-minus"></i>
                        </button>
                        <button type="button" class="btn btn-tool" data-card-widget="remove">
                            <i class="fas fa-times"></i>
                        </button>
                    </div>
                </div>
                <div class="card-body">
                    <div class="chartjs-size-monitor">
                        <div class="chartjs-size-monitor-expand">
                            <div class=""></div>
                        </div>
                        <div class="chartjs-size-monitor-shrink">
                            <div class=""></div>
                        </div>
                    </div>
                    <canvas id="donutChart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%; display: block; width: 638px;" width="957" height="375" class="chartjs-render-monitor"></canvas>
                </div>
            </div>

            <!-- berita -->
            <div class="berita" style="padding: 17px;"><br>
                <h3><b>Berita Terbaru</b></h3> <br>
                <div style="display: flex; gap: 40px; padding: 10px; justify-content: space-between;">
                    <div class="card" style="width: 16rem; padding: 2px; box-shadow: 0 6px 7px rgba(0, 0, 2, 0.5); border-radius: 5px;">
                        <img src="berita.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h6 class="card-title" style="font-size: 15px;"><b>Mahasiswa Polinema</b></h6>
                            <p class="card-text" style="font-size: 15px;">Some quick example text to build on the card title.</p>
                            <a href="https://mbkm.polinema.ac.id/" class="btn btn-primary" style="font-size: 15px;">Baca selengkapnya..</a>
                        </div>
                    </div>

                    <div class="card" style="width: 16rem; padding: 2px; box-shadow: 0 6px 7px rgba(0, 0, 2, 0.5); border-radius: 5px;">
                        <img src="berita.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h6 class="card-title" style="font-size: 15px;"><b>Mahasiswa Polinema</b></h6>
                            <p class="card-text" style="font-size: 15px;">Some quick example text to build on the card title.</p>
                            <a href="https://mbkm.polinema.ac.id/" class="btn btn-primary" style="font-size: 15px;">Baca selengkapnya..</a>
                        </div>
                    </div>

                    <div class="card" style="width: 16rem; padding: 2px; box-shadow: 0 6px 7px rgba(0, 0, 2, 0.5); border-radius: 5px;">
                        <img src="berita.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h6 class="card-title" style="font-size: 15px;"><b>Mahasiswa Polinema</b></h6>
                            <p class="card-text" style="font-size: 15px;">Some quick example text to build on the card title.</p>
                            <a href="https://mbkm.polinema.ac.id/" class="btn btn-primary" style="font-size: 15px;">Baca selengkapnya..</a>
                        </div>
                    </div>
                </div>

            </div>
            <!-- /.card-body -->
        </div>

        <!-- Script untuk inisialisasi Chart.js -->
        <script>
            const ctx = document.getElementById('visitors-chart').getContext('2d');
            const visitorsChart = new Chart(ctx, {
                type: 'line', // Jenis grafik
                data: {
                    labels: ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'],
                    datasets: [{
                            label: 'This Week',
                            data: [100, 200, 300, 400, 500, 600, 700],
                            borderColor: 'rgba(0, 123, 255, 1)',
                            backgroundColor: 'rgba(0, 123, 255, 0.1)',
                            fill: true
                        },
                        {
                            label: 'Last Week',
                            data: [90, 180, 270, 350, 420, 550, 680],
                            borderColor: 'rgba(128, 128, 128, 1)',
                            backgroundColor: 'rgba(128, 128, 128, 0.1)',
                            fill: true
                        }
                    ]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                    scales: {
                        x: {
                            beginAtZero: true
                        },
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            });
        </script>

        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
        <script>
            document.addEventListener("DOMContentLoaded", function() {
                var ctx = document.getElementById('donutChart').getContext('2d');
                var donutChart = new Chart(ctx, {
                    type: 'doughnut', // Donut chart type
                    data: {
                        labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple'], // Data labels
                        datasets: [{
                            data: [20, 15, 25, 30, 10], // Values for each segment
                            backgroundColor: [
                                '#f56954', // Red
                                '#3c8dbc', // Blue
                                '#f39c12', // Yellow
                                '#00a65a', // Green
                                '#605ca8' // Purple
                            ],
                        }]
                    },
                    options: {
                        maintainAspectRatio: false,
                        responsive: true,
                        plugins: {
                            legend: {
                                display: true,
                                position: 'top'
                            }
                        }
                    }
                });
            });
        </script>


        <!-- /.card-body -->
        <div class="card-footer">
            <!-- Additional footer content can go here -->
        </div>
        <!-- /.card-footer-->
    </div>
    <!-- /.card -->
</section>