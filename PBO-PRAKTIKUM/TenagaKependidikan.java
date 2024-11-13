public class TenagaKependidikan extends Pegawai {
    public String kategori;

    public TenagaKependidikan() {
        // Konstruktor default
    }

    public TenagaKependidikan(String nip, String nama, String kategori) {
        super(nip, nama);
        this.kategori = kategori;
    }

    public void displayInfo() {
        super.displayInfo();
        System.out.println("Kategori : " + kategori); // Menampilkan kategori
    }
}
