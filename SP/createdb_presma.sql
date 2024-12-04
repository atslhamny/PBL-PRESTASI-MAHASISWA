-- Tabel user
CREATE TABLE [user] (
    id INT PRIMARY KEY,
    username VARCHAR(255),
    password VARCHAR(255),
    role TINYINT
);

-- Tabel dosen
CREATE TABLE dosen (
    id INT PRIMARY KEY,
    user_id INT UNIQUE,
    nip VARCHAR(255),
    nama VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES [user](id)
);

-- Tabel mahasiswa
CREATE TABLE mahasiswa (
    id INT PRIMARY KEY,
    user_id INT UNIQUE,
    nama VARCHAR(255),
    nim VARCHAR(255),
    prodi VARCHAR(255),
    tahun_masuk VARCHAR(4),
    total_skor VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES [user](id)
);

-- Tabel tingkat_kompetisi
CREATE TABLE tingkat_kompetisi (
    id INT PRIMARY KEY,
    tingkat_lomba VARCHAR(255)
);

-- Tabel jenis_kompetisi
CREATE TABLE jenis_kompetisi (
    id INT PRIMARY KEY,
    jenis_lomba VARCHAR(255)
);

-- Tabel detail_kompetisi
CREATE TABLE detail_kompetisi (
    id INT PRIMARY KEY,
    id_jenis_kompetisi INT,
    id_tingkat_kompetisi INT,
    id_mahasiswa INT,
    id_dosen INT,
    tim BIT,
    judul_kompetisi VARCHAR(255),
    judul_kompetisi_en VARCHAR(255),
    tempat_kompetisi VARCHAR(255),
    tempat_kompetisi_en VARCHAR(255),
    url_kompetisi VARCHAR(255),
    tanggal_mulai DATE,
    tanggal_akhir DATE,
    jumlah_pt INT,
    jumlah_peserta INT,
    no_surat_tugas VARCHAR(255),
    tanggal_surat_tugas DATE,
    file_surat_tugas VARCHAR(255),
    file_sertifikat VARCHAR(255),
    foto_kegiatan VARCHAR(255),
    file_poster VARCHAR(255),
    validasi BIT,
    FOREIGN KEY (id_jenis_kompetisi) REFERENCES jenis_kompetisi(id),
    FOREIGN KEY (id_tingkat_kompetisi) REFERENCES tingkat_kompetisi(id),
    FOREIGN KEY (id_mahasiswa) REFERENCES mahasiswa(id),
    FOREIGN KEY (id_dosen) REFERENCES dosen(id)
);

-- Tabel log_data
CREATE TABLE log_data (
    id INT PRIMARY KEY,
    id_user INT,
    id_perubahan INT,
    tabel_perubahan VARCHAR(255),
    keterangan_kegiatan TEXT,
    tanggal DATETIME,
    FOREIGN KEY (id_user) REFERENCES [user](id)
);
