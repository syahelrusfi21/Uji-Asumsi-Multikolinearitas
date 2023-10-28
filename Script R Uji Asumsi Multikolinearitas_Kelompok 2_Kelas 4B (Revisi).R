library(dplyr) # Library untuk manipulasi dan transformasi data
library(car) # Library untuk analisis regresi (mencari nilai VIF dan toleransi)
library(stats) # Library dasar untuk analisis statistik (membuat model regresi)
library(olsrr) # Library untuk analisis regresi metode OLS
library(readxl) # Library untuk mengimport file data dari Excel

# Memanggil (mengimport) data
data_test <- read_excel("Demand for Money.xlsx")

# Menghilangkan variabel Observation
data_test <- data_test[,-1] # Menghilangkan kolom pertama
View(data_test) # berfungsi untuk melihat data

# Memeriksa Multikolinearitas
# Regresi
model<-lm(GDP~., data=data_test) # Memodelkan variabel GDP dengan seluruh variabel independen
summary(model)

attach(data_test) # berfungsi untuk melampirkan variabel yang terdapat pada data

# Melihat grafik linearitas antar variabel
plot(data_test)

# Melihat koefisien standard error tiap variabel bebas
coef(summary(model))

# Menguji multikolinearitas dengan mencari koefisien korelasi antar variabel bebas
cor(data_test)

# Menguji multikolinearitas dengan mencari nilai VIF dan tolerance tiap variabel bebas
ols_vif_tol(model)


# Mengatasi Multikolinearitas

# Metode Stepwise Backward Elimination
# Uji-F Parsial (Backward Elimination) menghilangkan satu per satu variabel independen
# Mereduksi model berdasarkan p-value = 0.05
# 0.05 menyatakan p-value, logical TRUE menampilkan proses pengeliminasian variabel dan menampilkan detail hasil regresi tiap langkahnya
reduced.model <- ols_step_backward_p(model,0.05,TRUE,TRUE)
reduced.model

# Membuat model baru berdasarkan stepwise backward elimination
new_model <- lm(GDP~CPI+LTRATE+TBRATE, data=data_test) # Memodelkan variabel GDP dengan variabel CPI, LTRATE, TBRATE
summary(new_model)

# Melihat koefisien standard error tiap variabel bebas dari model baru
coef(summary(new_model))

# Mengetahui koefisien korelasi antar variabel penjelas dari model baru
cor(CPI, LTRATE) # Melihat korelasi antara CPI dan LTRATE
cor(CPI, TBRATE) # Melihat korelasi antara CPI dan TBRATE
cor(LTRATE, TBRATE) # Melihat korelasi antara LTRATE dan TBRATE

# Mengetahui nilai VIF dan tolerance model baru
ols_vif_tol(new_model)

# Mengatasi Multikolinearitas dengan metode PCA
# Menghilangkan variabel GDP (variabel dependen)
new_data <- data_test[,-1]
head(new_data)

# Standarisasi Data
data_std = scale(new_data)
head(data_std) # Menampilkan beberapa baris awal pada 'data_std'

# Matriks Ragam Peragam
data_cov <- cov(data_std)
data_cov

# Eigen Value & Eigen Vector
data_eigen <- eigen(data_cov)
data_eigen

# Fungsi Komponen Utama
# Berikut untuk melakukan analisis PCA pada new_data dengan scale=TRUE, artinya kita melakukan standarisasi variabel
pc <- prcomp(new_data, scale = TRUE)
summary(pc) # Penentuan Banyaknya Komponen Utama
pc          # Menghitung Koefisien Komponen Utama

# Membentuk Scree Plot untuk menaksir PC mana yang akan digunakan
# eigen(data_cov)$values, artinya kita memplotting eigen value dari data_cov
# PC = 1:4, artinya kita memplotting semua variabel PC pada data
scree_data <- data.frame(eigen_value = eigen(data_cov)$values, PC = 1:4)
scree_data
# x = scree_data$PC, y = scree_data$eigen_value, artinya sumbu x menyatakan PC dan sumbu y menyatakan Eigen Value
# type = 'b', untuk menampilkan garis (grafiknya)
# xlab = 'Komponen Utama ke-', untuk memberi nama pada sumbu x
# ylab = 'Varians (Nilai Eigen)', untuk memberi nama pada sumbu y
# main = 'Scree Plot', untuk memberi nama judul dari scree plotnya
plot(x = scree_data$PC, y = scree_data$eigen_value, type = 'b',
     xlab = 'Komponen Utama ke-', ylab = 'Varians (Nilai Eigen)', 
     main = 'Scree Plot')

# Berdasarkan Eigen Value dan Scree plot, model baru ini akan digunakan PC1 dan PC2 yang bisa mejelaskan 97.709% keragaman data
head(pc$x) # Menampilkan beberapa baris awal pada matriks skor faktor (PC scores) yang dihasilkan dari analisis PCA
pca <- as.data.frame(pc$x) # Menjadikan pc$x sebagai dataframe
head(pca) # Menampilkan beberapa baris awal pada 'pca'
pca1 <- pca %>% select(1,2) # Memilih PC yang akan digunakan (dalam hal ini ialah PC1 dan PC2)
head(pca1) # Menampilkan beberapa baris awal pada 'pca1'
y1 <- data_test %>% select(GDP) # Memilih variabel dependen
head(y1) # Menampilkan beberapa baris awal pada 'y1'
datapca <- cbind(y1, pca1) # Menyatukan data y1 dengan pca1
head(datapca) # Menampilkan beberapa baris awal pada 'datapca'

# Model regresi linear berganda dengan Principal Component
modelpca <- lm(GDP~., data = datapca) # Memodelkan variabel GDP dengan PC1 dan PC2
summary(modelpca)

# Melihat grafik linearitas antar PC
plot(datapca)

# Menguji multikolinearitas dengan melihat koefisien standard error tiap PC
coef(summary(modelpca))

# Menguji multikolinearitas dengan melihat koefisien korelasi antar PC
cor(datapca)

# Menguji multikolinearitas dengan mencari nilai VIF dan tolerance tiap PC
ols_vif_tol(modelpca)
