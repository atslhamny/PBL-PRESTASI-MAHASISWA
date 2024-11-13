// import java.util.ArrayList;

// public class Demo {
//     public static void main(String[] args) {

//         ArrayList<Pegawai> daftarPegawai = new ArrayList<Pegawai>();

//         Dosen dosen1 = new Dosen("19940201", "Widia, S.Kom. Mkom", "199402");
//         Pegawai pegawai1 = dosen1;
//         Dosen newDosen = (Dosen) pegawai1;

//         // System.out.println(dosen1.nip);
//         // System.out.println(dosen1.nama);
//         // System.out.println(dosen1.nidn);
//         // dosen1.mengajar();

//         //Langkah 5 Upcasting
//         // System.out.println(pegawai1.nip);
//         // System.out.println(pegawai1.nama);
//         // System.out.println(pegawai1.nidn);
//         // pegawai1.mengajar();

//         //Langkah 7, Langkah
//         // System.out.println(pegawai1.nip);
//         // System.out.println(pegawai1.nama);
//         // pegawai1.displayInfo();

//         System.out.println(pegawai1.nip);
//         System.out.println(pegawai1.nama);
//         pegawai1.displayInfo();

//         TenagaKependidikan test = (TenagaKependidikan) pegawai1;

//         Dosen dosen2 = new Dosen("19700105", "Muhammad, S.T. M. T", "197001");

//         TenagaKependidikan tendik1 = new TenagaKependidikan("19940201", "Aida, A.md", "Tenaga Administrasi");
//         TenagaKependidikan tendik2 = new TenagaKependidikan("19650304", "Rika, S.T", "Tenaga Laboratortium");

//         daftarPegawai.add(dosen1);
//         daftarPegawai.add(dosen2);
//         daftarPegawai.add(tendik1);
//         daftarPegawai.add(tendik2);

//         System.out.println("Jumlah Pegawai: " + daftarPegawai.size());

//     }
// }

import java.util.ArrayList; // Tambahkan import ini

public class Demo {
    public static void main(String[] args) {

        ArrayList<Pegawai> daftarPegawai = new ArrayList<Pegawai>();

        Dosen dosen1 = new Dosen("19940201", "Widia, S.Kom. Mkom", "199402");
        Pegawai pegawai1 = dosen1;

      
        // Menggunakan newDosen
        System.out.println(pegawai1.nip);
        System.out.println(pegawai1.nama);
        pegawai1.displayInfo(); // Memanggil metode displayInfo() dari kelas Dosen

          // Melakukan downcasting
          Dosen newDosen = (Dosen) pegawai1;
          System.out.println(newDosen.nama);
          System.out.println(newDosen.nidn);
          newDosen.mengajar();


        Dosen dosen2 = new Dosen("19700105", "Muhammad, S.T. M. T", "197001");
        TenagaKependidikan tendik1 = new TenagaKependidikan("19940201", "Aida, A.md", "Tenaga Administrasi");
        TenagaKependidikan tendik2 = new TenagaKependidikan("19650304", "Rika, S.T", "Tenaga Laboratortium");

        daftarPegawai.add(dosen1);
        daftarPegawai.add(dosen2);
        daftarPegawai.add(tendik1);
        daftarPegawai.add(tendik2);

        System.out.println("Jumlah Pegawai: " + daftarPegawai.size());
    }

    public static void train(Pegawai pegawai) {
        System.out.println("Memberikan pelatihan untuk pegawai");
        pegawai.displayInfo();
    }
}