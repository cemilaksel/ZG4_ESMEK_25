*&---------------------------------------------------------------------*
*& Report ZG4CA_R_PROGRAM_3
*&---------------------------------------------------------------------*
*& 👨‍💻 Author  : Cemil Aksel
*& 📚 Subject : Data Types (Veri Tipleri)
*& 📅 Date    : 20.02.2025
*&---------------------------------------------------------------------*
REPORT zg4ca_r_program_3.

" 🔢 Integer data type declarations (Tam sayı veri türü bildirimleri)
DATA : gv_i TYPE i,       " First integer variable declaration (İlk tam sayı değişken bildirimi)
       " gv_i (tam_sayı_i)
       gv_j TYPE i.       " Second integer variable declaration (İkinci tam sayı değişken bildirimi)
       " gv_j (tam_sayı_j)

" 🔀 Floating point data type declaration (Kayan noktalı veri türü bildirimi)
DATA : gv_f TYPE f.       " Float variable for decimal numbers (Ondalık sayılar için float değişken)
       " gv_f (kayan_nokta_f)

" 📦 Packed decimal data type declaration (Paketlenmiş ondalık veri türü bildirimi)
DATA : gv_p TYPE p LENGTH 5 DECIMALS 2.  " Packed number: 5 digits total, 2 decimal places (Paketlenmiş sayı: toplam 5 basamak, 2 ondalık)
       " gv_p (paketlenmiş_p)
       " Format: XXX.XX (Format: XXX.XX)

" 📥 Value assignments for different data types (Farklı veri türleri için değer atamaları)
gv_i = 22.                " Assign integer value 22 (22 tam sayı değerini ata)
gv_j = 25.                " Assign integer value 25 (25 tam sayı değerini ata)
gv_f = '0.123456789'.     " Assign floating point value (Kayan noktalı değer ata)
                          " Note: String notation for precision (Not: Hassasiyet için string gösterimi)
gv_p = '12345.12'.        " Assign packed decimal value (Paketlenmiş ondalık değer ata)
                          " Note: Max 3 integer digits, 2 decimal digits (Not: Maks 3 tam basamak, 2 ondalık basamak)

" 🖨️ Output statements for different data types (Farklı veri türleri için çıktı komutları)
WRITE : / 'Integer gv_i = ', gv_i,      " Display first integer with label (İlk tam sayıyı etiketle göster)
          ' Integer gv_j = ', gv_j.      " Display second integer with label (İkinci tam sayıyı etiketle göster)
" Output: Integer gv_i = 22 Integer gv_j = 25 (Çıktı: Integer gv_i = 22 Integer gv_j = 25)

WRITE : / 'Float   gv_f = ', gv_f.      " Display floating point value (Kayan noktalı değeri göster)
" Output: Float gv_f = 0.123456789 (Çıktı: Float gv_f = 0.123456789)

WRITE : / 'Packed  gv_p = ', gv_p.      " Display packed decimal value (Paketlenmiş ondalık değeri göster)
" Output: Packed gv_p = 123.12 (Çıktı: Packed gv_p = 123.12)
" Note: Leading digits truncated due to LENGTH 5 (Not: LENGTH 5 nedeniyle baştaki basamaklar kesildi)
