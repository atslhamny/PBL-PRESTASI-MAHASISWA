-- SP Insert Detail_Kompetisi --
CREATE PROCEDURE sp_InsertDetailKompetisi
    @id_jenis_kompetisi INT,
    @id_tingkat_kompetisi INT,
    @id_mahasiswa INT,
    @id_dosen INT,
    @id_peran_mahasiswa INT,
    @id_peran_dosen INT,
    @judul_kompetisi VARCHAR(255),
    @judul_kompetisi_en VARCHAR(255),
    @tempat_kompetisi VARCHAR(255),
    @tempat_kompetisi_en VARCHAR(255),
    @url_kompetisi VARCHAR(255),
    @tanggal_mulai DATE,
    @tanggal_akhir DATE,
    @jumlah_pt INT,
    @jumlah_peserta INT,
    @no_surat_tugas VARCHAR(255),
    @tanggal_surat_tugas DATE,
    @file_surat_tugas VARBINARY(MAX),
    @file_sertifikat VARBINARY(MAX),
    @foto_kegiatan VARBINARY(MAX),
    @file_poster VARBINARY(MAX),
    @validasi BIT
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        -- Validasi apakah id_mahasiswa ada di tabel mahasiswa
        IF NOT EXISTS (SELECT 1 FROM mahasiswa WHERE id = @id_mahasiswa)
        BEGIN
            PRINT 'Error: id_mahasiswa tidak valid.';
            ROLLBACK;
            RETURN;
        END;

        -- Validasi apakah id_dosen ada di tabel dosen
        IF NOT EXISTS (SELECT 1 FROM dosen WHERE id = @id_dosen)
        BEGIN
            PRINT 'Error: id_dosen tidak valid.';
            ROLLBACK;
            RETURN;
        END;

        -- Validasi apakah id_jenis_kompetisi ada di tabel jenis_kompetisi
        IF NOT EXISTS (SELECT 1 FROM jenis_kompetisi WHERE id = @id_jenis_kompetisi)
        BEGIN
            PRINT 'Error: id_jenis_kompetisi tidak valid.';
            ROLLBACK;
            RETURN;
        END;

        -- Validasi apakah id_tingkat_kompetisi ada di tabel tingkat_kompetisi
        IF NOT EXISTS (SELECT 1 FROM tingkat_kompetisi WHERE id = @id_tingkat_kompetisi)
        BEGIN
            PRINT 'Error: id_tingkat_kompetisi tidak valid.';
            ROLLBACK;
            RETURN;
        END;

        -- Insert ke tabel detail_kompetisi
        INSERT INTO detail_kompetisi (
            id_jenis_kompetisi,
            id_tingkat_kompetisi,
            id_mahasiswa,
            id_dosen,
            id_peran_mahasiswa,
            id_peran_dosen,
            judul_kompetisi,
            judul_kompetisi_en,
            tempat_kompetisi,
            tempat_kompetisi_en,
            url_kompetisi,
            tanggal_mulai,
            tanggal_akhir,
            jumlah_pt,
            jumlah_peserta,
            no_surat_tugas,
            tanggal_surat_tugas,
            file_surat_tugas,
            file_sertifikat,
            foto_kegiatan,
            file_poster,
            validasi
        )
        VALUES (
            @id_jenis_kompetisi,
            @id_tingkat_kompetisi,
            @id_mahasiswa,
            @id_dosen,
            @id_peran_mahasiswa,
            @id_peran_dosen,
            @judul_kompetisi,
            @judul_kompetisi_en,
            @tempat_kompetisi,
            @tempat_kompetisi_en,
            @url_kompetisi,
            @tanggal_mulai,
            @tanggal_akhir,
            @jumlah_pt,
            @jumlah_peserta,
            @no_surat_tugas,
            @tanggal_surat_tugas,
            @file_surat_tugas,
            @file_sertifikat,
            @foto_kegiatan,
            @file_poster,
            @validasi
        );

        COMMIT;
        PRINT 'Data berhasil ditambahkan ke tabel detail_kompetisi.';
    END TRY
    BEGIN CATCH
        ROLLBACK;
        PRINT 'Terjadi kesalahan: ' + ERROR_MESSAGE();
    END CATCH
END;


EXEC sp_InsertDetailKompetisi 
    @id_jenis_kompetisi = 1,
    @id_tingkat_kompetisi = 1,
    @id_mahasiswa = 1,
    @id_dosen = 1,
    @id_peran_mahasiswa = 2,
    @id_peran_dosen = 3,
    @judul_kompetisi = 'Kompetisi Nasional',
    @judul_kompetisi_en = 'National Competition',
    @tempat_kompetisi = 'Jakarta',
    @tempat_kompetisi_en = 'Jakarta',
    @url_kompetisi = 'https://kompetisi.id',
    @tanggal_mulai = '2024-01-01',
    @tanggal_akhir = '2024-01-02',
    @jumlah_pt = 10,
    @jumlah_peserta = 100,
    @no_surat_tugas = 'ST12345',
    @tanggal_surat_tugas = '2024-01-01',
    @file_surat_tugas = NULL,
    @file_sertifikat = NULL,
    @foto_kegiatan = NULL,
    @file_poster = NULL,
    @validasi = 1;

	
	select * from detail_kompetisi;
	DELETE FROM detail_kompetisi;
	DBCC CHECKIDENT ('detail_kompetisi', RESEED, 0);






-- SP Delete Detail Kompetisi --
	CREATE PROCEDURE sp_DeleteDetailKompetisi
    @id INT
AS
BEGIN
    -- Menghapus data berdasarkan ID
    DELETE FROM detail_kompetisi
    WHERE id = @id;
    
    -- Menampilkan pesan jika berhasil menghapus
    PRINT 'Data dengan ID ' + CAST(@id AS VARCHAR) + ' telah berhasil dihapus.';
END;

-- Trial --
exec sp_DeleteDetailKompetisi
@id = 1;






-- SP Update Detail Kompetisi --
CREATE PROCEDURE sp_UpdateDetailKompetisi
    @id INT,
    @id_jenis_kompetisi INT,
    @id_tingkat_kompetisi INT,
    @id_mahasiswa INT,
    @id_dosen INT,
    @id_peran_mahasiswa INT,
    @id_peran_dosen INT,
    @judul_kompetisi VARCHAR(255),
    @judul_kompetisi_en VARCHAR(255),
    @tempat_kompetisi VARCHAR(255),
    @tempat_kompetisi_en VARCHAR(255),
    @url_kompetisi VARCHAR(255),
    @tanggal_mulai DATE,
    @tanggal_akhir DATE,
    @jumlah_pt INT,
    @jumlah_peserta INT,
    @no_surat_tugas VARCHAR(255),
    @tanggal_surat_tugas DATE,
    @file_surat_tugas VARBINARY(MAX),
    @file_sertifikat VARBINARY(MAX),
    @foto_kegiatan VARBINARY(MAX),
    @file_poster VARBINARY(MAX),
    @validasi BIT
AS
BEGIN
    -- Melakukan Update data pada tabel detail_kompetisi berdasarkan ID
    UPDATE detail_kompetisi
    SET
        id_jenis_kompetisi = @id_jenis_kompetisi,
        id_tingkat_kompetisi = @id_tingkat_kompetisi,
        id_mahasiswa = @id_mahasiswa,
        id_dosen = @id_dosen,
        id_peran_mahasiswa = @id_peran_mahasiswa,
        id_peran_dosen = @id_peran_dosen,
        judul_kompetisi = @judul_kompetisi,
        judul_kompetisi_en = @judul_kompetisi_en,
        tempat_kompetisi = @tempat_kompetisi,
        tempat_kompetisi_en = @tempat_kompetisi_en,
        url_kompetisi = @url_kompetisi,
        tanggal_mulai = @tanggal_mulai,
        tanggal_akhir = @tanggal_akhir,
        jumlah_pt = @jumlah_pt,
        jumlah_peserta = @jumlah_peserta,
        no_surat_tugas = @no_surat_tugas,
        tanggal_surat_tugas = @tanggal_surat_tugas,
        file_surat_tugas = @file_surat_tugas,
        file_sertifikat = @file_sertifikat,
        foto_kegiatan = @foto_kegiatan,
        file_poster = @file_poster,
        validasi = @validasi
    WHERE id = @id;
    
    -- Menampilkan pesan konfirmasi jika data berhasil diperbarui
    PRINT 'Data dengan ID ' + CAST(@id AS VARCHAR) + ' telah berhasil diperbarui.';
END;


-- Trial --
EXEC sp_UpdateDetailKompetisi
    @id = 1, 
    @id_jenis_kompetisi = 2,
    @id_tingkat_kompetisi = 3,
    @id_mahasiswa = 1,
    @id_dosen = 1,
    @id_peran_mahasiswa = 1,
    @id_peran_dosen = 2,
    @judul_kompetisi = 'Judul Kompetisi Baru',
    @judul_kompetisi_en = 'New Competition Title',
    @tempat_kompetisi = 'Lokasi Baru',
    @tempat_kompetisi_en = 'New Location',
    @url_kompetisi = 'http://newurl.com',
    @tanggal_mulai = '2024-12-10',
    @tanggal_akhir = '2024-12-15',
    @jumlah_pt = 5,
    @jumlah_peserta = 100,
    @no_surat_tugas = '123456789',
    @tanggal_surat_tugas = '2024-12-05',
    @file_surat_tugas = NULL,
    @file_sertifikat = NULL,
    @foto_kegiatan = NULL,
    @file_poster = NULL,
    @validasi = 1;
