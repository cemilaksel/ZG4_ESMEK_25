*&---------------------------------------------------------------------*
*& Report Z4CA_R_PROGRAM_4
*&---------------------------------------------------------------------*
*& 👨‍💻 Author  : Cemil Aksel
*& 📚 Subject : Data Types (Veri Türleri)
*& 📅 Date    : 27.02.2025
*&---------------------------------------------------------------------*
REPORT z4ca_r_program_4.

" 🔤 Character type declarations (Karakter türü bildirimleri)
DATA : gv_test TYPE c LENGTH 262143.      " Large character variable, max length (Büyük karakter değişkeni, maksimum uzunluk)
       " gv_test (test_değişkeni)

DATA : gv_name1 TYPE c LENGTH 20.         " First name variable, 20 chars (İlk isim değişkeni, 20 karakter)
       " gv_name1 (isim1)

DATA : gv_name2(20) TYPE c.               " Second name variable, alternative syntax (İkinci isim değişkeni, alternatif sözdizimi)
       " gv_name2 (isim2)

DATA : gv_name3 TYPE c LENGTH 20 VALUE 'ipek aksel'.  " Third name with initial value (Başlangıç değerli üçüncü isim)
       " gv_name3 (isim3)

DATA : gv_char TYPE c LENGTH 3.           " Short character variable, 3 chars (Kısa karakter değişkeni, 3 karakter)
       " gv_char (karakter)

DATA : gv_string TYPE string.             " Dynamic string variable (Dinamik string değişkeni)
       " gv_string (metin)

" 🔢 Numeric character type declarations (Sayısal karakter türü bildirimleri)
DATA : gv_postal_code TYPE n LENGTH 5.    " Numeric text for postal code, 5 digits (Posta kodu için sayısal metin, 5 basamak)
       " gv_postal_code (posta_kodu)

DATA : gv_phone_number TYPE n LENGTH 14.  " Numeric text for phone number, 14 digits (Telefon numarası için sayısal metin, 14 basamak)
       " gv_phone_number (telefon_no)

" 📅 Date and time type declarations (Tarih ve zaman türü bildirimleri)
DATA : gv_date TYPE d.                    " Date variable (YYYYMMDD format) (Tarih değişkeni (YYYYAAGG formatı))
       " gv_date (tarih)

DATA : gv_date_yesterday TYPE d.          " Yesterday's date variable (Dünkü tarih değişkeni)
       " gv_date_yesterday (tarih_dun)

DATA : gv_date_tomorrow TYPE d.           " Tomorrow's date variable (Yarınki tarih değişkeni)
       " gv_date_tomorrow (tarih_yarin)

DATA : gv_time TYPE t.                    " Time variable (HHMMSS format) (Zaman değişkeni (SSDDSS formatı))
       " gv_time (zaman)

" 📝 Character variable assignments (Karakter değişken atamaları)
gv_name1 = 'CEMIL AKSEL'.                 " Assign name to first variable (İlk değişkene isim ata)
gv_name2 = 'AYNUR AKSEL'.          " Assign name with special chars (Özel karakterli isim ata)

" 🖨️ Character variable outputs (Karakter değişken çıktıları)
WRITE : / 'gv_name1 = ', gv_name1.        " Display first name (İlk ismi göster)
WRITE : / 'gv_name2 = ', gv_name2.        " Display second name (İkinci ismi göster)
WRITE : / 'gv_name3 = ', gv_name3.        " Display third name with initial value (Başlangıç değerli üçüncü ismi göster)

" 📤 Short character assignment and output (Kısa karakter atama ve çıktı)
gv_char = 'ABC'.                          " Assign 3 characters (3 karakter ata)
WRITE : / 'gv_char = ', gv_char.          " Display char variable (Karakter değişkenini göster)

" 📜 String assignment and output (String atama ve çıktı)
gv_string = 'LEARNING ABAP PROGRAMMING'.  " Assign dynamic string (Dinamik string ata)
WRITE : / 'gv_string = ', gv_string.      " Display string variable (String değişkenini göster)

" 🏠 Numeric text assignments (Sayısal metin atamaları)
gv_postal_code = '6120'.                  " Assign postal code with leading zero (Başında sıfır olan posta kodu ata)
WRITE : / 'gv_postal_code = ', gv_postal_code.  " Display postal code (Posta kodunu göster)
" Output: 06120 (Leading zero added) (Çıktı: 06120 (Başa sıfır eklendi))

gv_phone_number = '00905306433197'.       " Assign international phone number (Uluslararası telefon numarası ata)
WRITE : / 'gv_phone_number = ', gv_phone_number. " Display phone number (Telefon numarasını göster)

" 📅 Date assignments and calculations (Tarih atamaları ve hesaplamaları)
gv_date = '20250227'.                     " Assign specific date (Belirli tarih ata)
WRITE : / 'gv_date = ', gv_date.          " Display date (Tarihi göster)

gv_date_yesterday = sy-datum - 1.         " Calculate yesterday using system date (Sistem tarihinden dünü hesapla)
WRITE : / 'gv_date_yesterday = ', gv_date_yesterday. " Display yesterday's date (Dünkü tarihi göster)
" sy-datum = system date (sistem tarihi)

gv_date_tomorrow = sy-datum + 1.          " Calculate tomorrow using system date (Sistem tarihinden yarını hesapla)
WRITE : / 'gv_date_tomorrow = ', gv_date_tomorrow. " Display tomorrow's date (Yarınki tarihi göster)

" ⏰ Time assignments (Zaman atamaları)
gv_time = sy-uzeit.                       " Get current system time (Mevcut sistem zamanını al)
WRITE : / 'gv_time = ', gv_time.          " Display current time (Mevcut zamanı göster)
" sy-uzeit = system time (sistem zamanı)

gv_time = '161005'.                       " Assign specific time 16:10:05 (Belirli zaman 16:10:05 ata)
WRITE : / 'gv_time = ', gv_time.          " Display specific time (Belirli zamanı göster)
