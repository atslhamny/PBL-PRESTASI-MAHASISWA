
import java.util.ArrayList;

public class PendidikanMain extends Pegawai {
    public static void main(String[] args) {
        Dosen dosen1 = new Dosen("19940201", "Widia, S.Kom, M.Kom", "199402");
        // Dosen dosen2 = new Dosen("1970015", "Muhammad, S.T, M.T", "197001");
        TenagaKependidikan tendik1 = new TenagaKependidikan("19750301", "Aida, A.Md.", "Tenaga Administrasi");

        train(dosen1);
        train(tendik1);
        // TenagaKependidikan tendik2 = new TenagaKependidikan("19650304", "Rika, S.T.", "Tenaga Laboratorium");
        // Pegawai pegawai1 = dosen1;
        // ArrayList<Pegawai> daftarPegawai = new ArrayList<Pegawai>();
        // daftarPegawai.add(dosen1);
        // daftarPegawai.add(dosen2);
        // daftarPegawai.add(tendik1);
        // daftarPegawai.add(tendik2);

        // System.out.println(dosen1.nip);
        // System.out.println(dosen1.nama);
        // System.out.println(dosen1.nidn);
        // dosen1.mengajar();

        // System.out.println(pegawai1.nip);
        // System.out.println(pegawai1.nama);
        // pegawai1.displayInfo();

        // Dosen newDosen = (Dosen) pegawai1;

        // System.out.println(newDosen.nama);
        // System.out.println(newDosen.nidn);
        // newDosen.mengajar();

        // downcasting
        // TenagaKependidikan test = (TenagaKependidikan) pegawai1;
        
        // for (Pegawai pegawai : daftarPegawai) {
        //     pegawai.displayInfo();
        //     System.out.println();
        // }
        
    }

    // Polymorphic Arguments & instanceOf
    public static void train (Pegawai pegawai) {
        System.out.println("Memberikan pelatihan untuk pegawai");
        pegawai.displayInfo();
        System.out.println("==================================");

        // hanya test
        // System.out.println(pegawai.nidn);
        // System.out.println(pegawai.kategori);
        // pegawai.mengajar

        if (pegawai instanceof Dosen) {
            System.out.println("memberikan pelatihan pedagogik");
        }
    }
}
