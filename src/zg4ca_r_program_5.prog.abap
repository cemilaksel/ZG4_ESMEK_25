*&---------------------------------------------------------------------*
*& Report ZG4CA_R_PROGRAM_5
*&---------------------------------------------------------------------*
*& 👨‍💻 Author  : Cemil Aksel
*& 📚 Subject : Mathematical Operations (Matematiksel İşlemler)
*& 📅 Date    : 04.03.2025
*&---------------------------------------------------------------------*
REPORT zg4ca_r_program_5.

" 🏭 Production quantity variable declarations (Üretim miktarı değişken bildirimleri)
DATA : gv_produced_quantity   TYPE i.      " Integer variable for produced quantity (Üretilen miktar için tam sayı değişkeni)
       " gv_produced_quantity (uretilen_miktar)

DATA : gv_produced_quantity_p TYPE p LENGTH 15 DECIMALS 3.  " Packed decimal for precise quantity (Hassas miktar için paketlenmiş ondalık)
       " gv_produced_quantity_p (uretilen_miktar_p)
       " Format: 12 integer digits, 3 decimal places (Format: 12 tam basamak, 3 ondalık basamak)

" 🔢 Mathematical operation variables (Matematiksel işlem değişkenleri)
DATA : gv_number1 TYPE i,                  " First integer number (İlk tam sayı)
       " gv_number1 (sayi1)
       gv_number2 TYPE i,                  " Second integer number (İkinci tam sayı)
       " gv_number2 (sayi2)
       gv_number3 TYPE p LENGTH 15 DECIMALS 3,  " Result with decimals (Ondalıklı sonuç)
       " gv_number3 (sayi3)
       gv_number4 TYPE p LENGTH 15 DECIMALS 3.  " Production capacity variable (Üretim kapasitesi değişkeni)
       " gv_number4 (sayi4)

" ➗ Division operation with integer result (Tam sayı sonuçlu bölme işlemi)
gv_produced_quantity = 100 / 3.           " Integer division: 100 / 3 = 33 (Tam sayı bölme: 100 / 3 = 33)
WRITE : / 'gv_produced_quantity = ', gv_produced_quantity.  " Display integer division result (Tam sayı bölme sonucunu göster)
" Note: Decimal part is truncated (Not: Ondalık kısım atılır)

" ➗ Division operation with decimal result (Ondalıklı sonuçlu bölme işlemi)
gv_produced_quantity_p = 100 / 3.         " Decimal division: 100 / 3 = 33.333 (Ondalıklı bölme: 100 / 3 = 33.333)
WRITE : / 'gv_produced_quantity_p = ', gv_produced_quantity_p.  " Display decimal division result (Ondalıklı bölme sonucunu göster)
" Note: Preserves decimal places (Not: Ondalık basamakları korur)

" ➕ Addition operation (Toplama işlemi)
gv_number1 = 2.                           " Assign first number (İlk sayıyı ata)
gv_number2 = 3.                           " Assign second number (İkinci sayıyı ata)
gv_number3 = gv_number1 + gv_number2.     " Add two numbers: 2 + 3 = 5 (İki sayıyı topla: 2 + 3 = 5)
WRITE : / 'Total production quantity (gv_number3) = ', gv_number3.  " Display sum (Toplamı göster)
" Original: toplam üretim miktarı (Orijinal: toplam üretim miktarı)

" ➕ Increment operation (Artırma işlemi)
gv_number4 = 10.                          " Initial production capacity (Başlangıç üretim kapasitesi)
gv_number4 = gv_number4 + 1.              " Increment by 1: 10 + 1 = 11 (1 artır: 10 + 1 = 11)
WRITE : / 'Machine new production capacity (gv_number4) = ', gv_number4.  " Display new capacity (Yeni kapasiteyi göster)
" Original: makinenin yeni üretim kapasitesi (Orijinal: makinenin yeni üretim kapasitesi)

" ✖️ Multiplication operation (Çarpma işlemi)
gv_number4 = gv_number4 * 2.              " Double the capacity: 11 * 2 = 22 (Kapasiteyi ikiye katla: 11 * 2 = 22)
WRITE : / 'Production capacity doubled = ', gv_number4.  " Display doubled capacity (İki katına çıkan kapasiteyi göster)
" Original: üretimin kapasitesi 2 katına çıktı (Orijinal: üretimin kapasitesi 2 katına çıktı)

" ➗ Division operation to restore (Geri döndürme için bölme işlemi)
gv_number4 = gv_number4 / 2.              " Halve the capacity: 22 / 2 = 11 (Kapasiteyi yarıya indir: 22 / 2 = 11)
WRITE : / 'Production capacity returned to normal = ', gv_number4.  " Display restored capacity (Normal kapasiteyi göster)
" Original: üretimin kapasitesi normale döndü (Orijinal: üretimin kapasitesi normale döndü)
