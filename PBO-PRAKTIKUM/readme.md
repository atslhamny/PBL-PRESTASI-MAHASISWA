### pertanyaan

    Bima yang ngerjain

1. Apakah upcasting dapat dilakukan dari suatu class terhadap class lain yang tidak memiliki relasi inheritance?
   Jawaban: Tidak, upcasting hanya bisa dilakukan pada objek yang memiliki relasi inheritance. Jika tidak ada relasi inheritance antara dua kelas, maka upcasting tidak diperbolehkan dan akan menghasilkan kesalahan kompilasi. Upcasting mengharuskan objek bertipe subclass dapat diperlakukan sebagai objek bertipe superclassnya.

2. Dari dua baris kode program berikut, manakah proses upcasting yang tepat? Jelaskan.
   Keduanya merupakan proses upcasting yang benar, namun yang pertama (Pegawai pegawai1 = new Dosen();) lebih umum digunakan karena upcasting dapat dilakukan secara implisit. Dalam upcasting, objek Dosen diperlakukan sebagai objek bertipe Pegawai, yang merupakan superclass-nya. Penulisan (Pegawai) dalam baris kedua tidak diperlukan karena upcasting otomatis terjadi tanpa perlu menyebutkan nama superclass.

3. Apa fungsi dari keyword instanceof?
   Jawaban: Keyword instanceof digunakan untuk memeriksa apakah suatu objek adalah instance dari tipe kelas tertentu atau subclass-nya. Hal ini sangat berguna saat melakukan downcasting, untuk memastikan objek yang ingin kita casting memang tipe yang sesuai dan menghindari ClassCastException.

4. Apa yang dimaksud dengan heterogeneous collection?
   Jawaban: Heterogeneous collection adalah koleksi (seperti ArrayList, Stack, atau Queue) yang dapat menyimpan elemen dengan tipe yang berbeda dalam satu koleksi, asalkan elemen-elemen tersebut berada dalam satu hierarki inheritance. Dalam Java, hal ini memungkinkan menyimpan objek-objek dari berbagai subclass dalam koleksi yang bertipe superclass-nya, sehingga memungkinkan penggunaan polimorfisme.

5. Sebuah object diinstansiasi dari class Pegawai. Kemudian dilakukan downcasting menjadi object bertipe Dosen. Apakah hal ini dapat dilakukan? Lakukan percobaan untuk membuktikannya.
   Jawaban: Tidak, downcasting dari Pegawai ke Dosen tidak dapat dilakukan jika objek tersebut awalnya diinstansiasi sebagai Pegawai. Downcasting hanya dapat dilakukan jika objek tersebut sebenarnya adalah instance dari Dosen yang sedang diperlakukan sebagai Pegawai (melalui upcasting sebelumnya).
