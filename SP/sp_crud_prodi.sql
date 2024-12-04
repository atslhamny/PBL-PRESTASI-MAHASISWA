
-- Delete Prodi --
CREATE PROCEDURE sp_DeleteProdi
    @id INT
AS
BEGIN
    BEGIN TRY
        -- Mulai transaksi
        BEGIN TRANSACTION;

        -- Hapus data dari tabel prodi berdasarkan id
        DELETE FROM prodi
        WHERE id = @id;

        -- Commit transaksi jika sukses
        COMMIT TRANSACTION;

        PRINT 'Data program studi berhasil dihapus.';
    END TRY
    BEGIN CATCH
        -- Rollback jika terjadi kesalahan
        ROLLBACK TRANSACTION;

        -- Menampilkan pesan error
        PRINT 'Terjadi kesalahan: ' + ERROR_MESSAGE();
    END CATCH
END;

EXEC sp_DeleteProdi 
    @id = 4;







-- Insert Prodi --
CREATE PROCEDURE sp_InsertProdi
    @id INT,
    @nama_prodi VARCHAR(255)
AS
BEGIN
    BEGIN TRY
        -- Mulai transaksi
        BEGIN TRANSACTION;

        -- Insert data ke tabel prodi
        INSERT INTO prodi (id, nama_prodi)
        VALUES (@id, @nama_prodi);

        -- Commit transaksi jika sukses
        COMMIT TRANSACTION;

        PRINT 'Data program studi berhasil ditambahkan.';
    END TRY
    BEGIN CATCH
        -- Rollback jika terjadi kesalahan
        ROLLBACK TRANSACTION;

        -- Menampilkan pesan error
        PRINT 'Terjadi kesalahan: ' + ERROR_MESSAGE();
    END CATCH
END;

-- Update Prodi --
CREATE PROCEDURE sp_UpdateProdi
    @id INT,
    @nama_prodi VARCHAR(255)
AS
BEGIN
    BEGIN TRY
        -- Mulai transaksi
        BEGIN TRANSACTION;

        -- Update data di tabel prodi berdasarkan id
        UPDATE prodi
        SET nama_prodi = @nama_prodi
        WHERE id = @id;

        -- Commit transaksi jika sukses
        COMMIT TRANSACTION;

        PRINT 'Data program studi berhasil diperbarui.';
    END TRY
    BEGIN CATCH
        -- Rollback jika terjadi kesalahan
        ROLLBACK TRANSACTION;

        -- Menampilkan pesan error
        PRINT 'Terjadi kesalahan: ' + ERROR_MESSAGE();
    END CATCH
END;




EXEC sp_UpdateProdi
	@id = 3,
	@nama_prodi = 'Piranti Perangkat Lunak';

EXEC sp_InsertProdi 
    @id = 4, 
    @nama_prodi = 'Sipil';


	select * from prodi;