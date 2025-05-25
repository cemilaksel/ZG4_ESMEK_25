*&---------------------------------------------------------------------*
*& Report ZG4CA_R_PROGRAM_6
*&---------------------------------------------------------------------*
*& 👨‍💻 Author  : Cemil Aksel
*& 📚 Subject : String Operations (Metin İşlemleri)
*& 📅 Date    : 06.03.2025
*&---------------------------------------------------------------------*
REPORT ZG4CA_R_PROGRAM_6.

" 📅 Variable declarations for date manipulation (Tarih işlemleri için değişken tanımları)
DATA : gv_date TYPE d,                    " Date variable in YYYYMMDD format (YYYYAAGG formatında tarih değişkeni)
       " gv_date (tarih)
       gv_day   TYPE c LENGTH 2,          " Day component, 2 characters (Gün bileşeni, 2 karakter)
       " gv_day (gun)
       gv_month TYPE c LENGTH 2,          " Month component, 2 characters (Ay bileşeni, 2 karakter)
       " gv_month (ay)
       gv_year  TYPE c LENGTH 4.          " Year component, 4 characters (Yıl bileşeni, 4 karakter)
       " gv_year (yil)

DATA : gv_date_formatted TYPE c LENGTH 10. " Formatted date string DD/MM/YYYY (Formatlanmış tarih dizesi GG/AA/YYYY)
       " gv_date_formatted (tarih2)

" 📥 Date assignment (Tarih ataması)
gv_date = '20250306'.                     " Assign date: March 6, 2025 (Tarih ata: 6 Mart 2025)
WRITE : / 'gv_date = ', gv_date.          " Display date in default format (Varsayılan formatta tarihi göster)
" Output: 20250306 (Çıktı: 20250306)

" 🎨 Formatted date output (Formatlanmış tarih çıktısı)
WRITE : / 'gv_date = ', gv_date DD/MM/YYYY.  " Display with date formatting mask (Tarih formatlama maskesi ile göster)
" Output: 06/03/2025 (Çıktı: 06/03/2025)
" DD/MM/YYYY = Display format mask (Görüntüleme format maskesi)

" ✂️ String offset operations - Extract date components (String kaydırma işlemleri - Tarih bileşenlerini çıkar)
gv_day = gv_date+6(2).                    " Extract day: offset 6, length 2 (Günü çıkar: kaydırma 6, uzunluk 2)
WRITE : / 'gv_day = ', gv_day.            " Display extracted day (Çıkarılan günü göster)
" +6(2) = Start at position 6, take 2 characters (6. pozisyondan başla, 2 karakter al)
" Result: 06 (Sonuç: 06)

gv_month = gv_date+4(2).                  " Extract month: offset 4, length 2 (Ayı çıkar: kaydırma 4, uzunluk 2)
WRITE : / 'gv_month = ', gv_month.        " Display extracted month (Çıkarılan ayı göster)
" +4(2) = Start at position 4, take 2 characters (4. pozisyondan başla, 2 karakter al)
" Result: 03 (Sonuç: 03)

gv_year = gv_date+0(4).                   " Extract year: offset 0, length 4 (Yılı çıkar: kaydırma 0, uzunluk 4)
WRITE : / 'gv_year = ', gv_year.          " Display extracted year (Çıkarılan yılı göster)
" +0(4) = Start at position 0, take 4 characters (0. pozisyondan başla, 4 karakter al)
" Result: 2025 (Sonuç: 2025)

" 🔗 String concatenation - Method 1: CONCATENATE (String birleştirme - Yöntem 1: CONCATENATE)
CONCATENATE gv_day '/' gv_month '/' gv_year INTO gv_date_formatted.  " Join components with separator (Bileşenleri ayırıcı ile birleştir)
WRITE : / 'gv_date_formatted = ', gv_date_formatted.  " Display concatenated date (Birleştirilmiş tarihi göster)
" CONCATENATE = Classic string joining command (Klasik string birleştirme komutu)
" Result: 06/03/2025 (Sonuç: 06/03/2025)

" 🧹 Clear variable content (Değişken içeriğini temizle)
CLEAR gv_date_formatted.                  " Reset variable to initial state (Değişkeni başlangıç durumuna sıfırla)
" CLEAR = Empties the variable (Değişkeni boşaltır)

" 🔗 String concatenation - Method 2: && operator (String birleştirme - Yöntem 2: && operatörü)
gv_date_formatted = gv_day && '/' && gv_month && '/' && gv_year.  " Modern string chaining syntax (Modern string zincirleme sözdizimi)
WRITE : / 'gv_date_formatted = ', gv_date_formatted.  " Display concatenated date (Birleştirilmiş tarihi göster)
" && = String concatenation operator (String birleştirme operatörü)
" Result: 06/03/2025 (Sonuç: 06/03/2025)
