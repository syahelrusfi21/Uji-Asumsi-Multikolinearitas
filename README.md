# Uji-Asumsi-Multikolinearitas
Analisis Pengaruh Pasokan Uang, Indeks Harga Konsumen, Suku Bunga, dan Tingkat  Bunga terhadap Produk Domestik Bruto: Studi Kasus Permintaan Uang di Amerika  Serikat, tahun 1980-1998

Latar Belakang

Dalam penelitian, analisis yang kuat untuk menjawab pertanyaan penelitian yang kompleks adalah menggunakan metode regresi. (Gun Mardiatmoko). Analisis regresi memungkinkan kita untuk menganalisis banyak variabel secara bersamaan. Dalam analisis regresi, baik regresi linear maupun regresi multivariat, kita dapat memodelkan hubungan antara variabel independen dan variabel respon (variabel dependen) dalam suatu penelitian.
Model regresi linear dapat dipilih tergantung pada beberapa faktor, seperti jumlah variabel independen yang terlibat dan kompleksitas hubungan yang ingin dipahami. Jika hanya melibatkan hubungan antara dua variabel, yaitu satu variabel independen dan variabel dependen (variabel respons), maka regresi yang digunakan adalah Regresi Linear Sederhana. Selanjutnya, jika melibatkan lebih dari satu variabel independen yang digunakan untuk memprediksi variabel dependen, maka model regresi yang akan digunakan adalah Regresi Linear Berganda.
Model regresi linear dapat melibatkan lebih dari satu variabel independen. Secara umum jika terdapat k variabel independen, yakni (X1, X2, ..., Xn), maka model regresi linearnya adalah
Y = 𝛽0 +  𝛽1X1 + 𝛽2X2 + ... + 𝛽kXk + 𝜀
Model ini dinamakan model regresi linear ganda (multiple). Dalam konteks ini, 𝛽0 adalah intercept atau konstanta, sedangkan 𝛽1, ..., 𝛽k adalah parameter dan 𝜀 adalah galat acak. (Suyono). Ketika dua atau lebih variabel independen dalam model regresi linear berganda berkorelasi tinggi satu sama lain maka terjadi multikolinearitas. Dimana multikolinearitas dapat mempengaruhi estimasi koefisien regresi dalam analisis regresi linear berganda. Ketika terjadi multikolinearitas, interpretasi koefisien regresi menjadi sulit, koefisien regresi menjadi tidak stabil, tidak signifikan secara statistik, atau bahkan berubah arah yang tidak konsisten.
Maka dari itu, penting untuk melakukan identifikasi dan juga penanganan terhadap multikolinearitas. Identifikasi multikolinearitas dapat dilakukan melalui analisis matriks korelasi atau penggunaan faktor inflasi varian (VIF). Sedangkan untuk penanganannya dapat dilakukan menghilangkan variabel prediktor yang berkorelasi tinggi, menambah jumlah observasi, mentransformasi data ke dalam bentuk lain (misalnya logaritma natural atau akar kuadrat). 
Analisis regresi sederhana melibatkan penggunaan satu variabel prediktor (variabel independen) dan satu variabel respon (variabel dependen). Dalam analisis regresi linear sederhana seperti ini, multikolinearitas tidak terjadi. Salah satu metode untuk mendeteksi multikolinearitas adalah dengan menguji koefisien korelasi (r) antar variabel prediktor. Jika koefisien korelasi antara setiap pasangan variabel prediktor > 0.8, maka multikolinearitas terjadi. Namun, jika koefisien korelasi antara setiap pasangan variabel prediktor < 0.8, maka multikolinearitas tidak terjadi.
Uji asumsi klasik merupakan syarat yang harus terpenuhi dalam analisis regresi berganda. Uji asumsi klasik yang umum digunakan meliputi uji normalitas, uji multikolinearitas, dan uji heteroskedastisitas. Uji multikolinearitas adalah proses untuk mengidentifikasi dan mengevaluasi tingkat multikolinearitas dalam model regresi. Tujuan utama uji asumsi multikolinearitas adalah untuk mengukur sejauh mana variabel prediktor saling berkorelasi dalam analisis regresi.
Penelitian ini terbatas pada penggunaan data yang diambil dari internet. Dalam analisis ini, digunakan regresi linear berganda untuk mengevaluasi hubungan antar variabel bebas, dengan asumsi bahwa terdapat korelasi linear antar variabel bebas (multikolinearitas).

Rumusan Masalah

Berdasarkan latar belakang masalah diatas, maka dapat diidentifikasi beberapa masalah, yaitu:
1)	Apa yang dimaksud dengan Uji Asumsi Multikolinearitas?
2)	Apakah dampak (akibat) bagi model regresi yang dihasilkan jika Uji Asumsi Multikolinearitas dilanggar?
3)	Bagaimana metode yang dilakukan untuk memeriksa atau melakukan pengujian pada Uji Asumsi Multikolinearitas?
4)	Bagaimana script R yang diperlukan untuk melakukan pengujian atau pemeriksaan pada Uji Asumsi Multikolinearitas?
5)	Bagaimana solusi yang tepat jika terjadi pelanggaran pada Uji Asumsi Multikolinearitas?
6)	Contoh studi kasus dan terapkan mulai dari tahap pemeriksaan hingga mengatasi pelanggaran Uji Asumsi Multikolinearitas.

Batasan Masalah

Ruang lingkup dalam penelitian ini dibatasi pada data yang diambil dari internet atau buku. Lalu, analisis regresi yang digunakan adalah regresi linear berganda dan antar variabel bebas pada data diduga memiliki korelasi linear (multikolinearitas).

Tujuan dan Manfaat

Tujuan dari penelitian ini yaitu untuk dapat membantu meningkatkan pemahaman tentang pentingnya memeriksa asumsi multikolinearitas dalam analisis regresi.
Adapun manfaat dalam penulisan makalah ini, yaitu bagi pembaca diharapkan dapat mengetahui dan memahami lebih lanjut tentang Uji Asumsi Multikolinearitas. Bagi kami selaku penyusun, dapat menambah wawasan dan dapat lebih memahami lagi tentang Uji Asumsi Multikolinearitas. Sehingga kedepannya dapat meningkatkan kepercayaan pada hasil penelitian dan meningkatkan kredibilitas peneliti.
