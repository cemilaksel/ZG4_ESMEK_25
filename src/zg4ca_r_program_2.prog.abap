*&---------------------------------------------------------------------*
*& Report ZG4CA_R_PROGRAM_2
*&---------------------------------------------------------------------*
*& 👨‍💻 Author  : Cemil Aksel
*& 📚 Subject : Variable Definition (Değişken Tanımlama)
*& 📅 Date    : 18.02.2025
*&---------------------------------------------------------------------*
REPORT zG4ca_r_program_2.

" 🔢 Integer variable declarations (Tam sayı değişken bildirimleri)
DATA : gv_number1 TYPE i,       " First integer variable (İlk tam sayı değişkeni)
       " gv_number1 (sayı1)
       gv_number2 TYPE i,       " Second integer variable (İkinci tam sayı değişkeni)
       " gv_number2 (sayı2)
       gv_result TYPE i.        " Result integer variable (Sonuç tam sayı değişkeni)
       " gv_result (sonuç)

" 📥 Variable value assignments (Değişken değer atamaları)
gv_number1 = 2.                 " Assign value 2 to first number (İlk sayıya 2 değerini ata)
gv_number2 = 4.                 " Assign value 4 to second number (İkinci sayıya 4 değerini ata)

" ➕ Arithmetic operation (Aritmetik işlem)
gv_result = gv_number1 + gv_number2.  " Add two numbers and store result (İki sayıyı topla ve sonucu sakla)
" Calculation: 2 + 4 = 6 (Hesaplama: 2 + 4 = 6)

" 🖨️ Output display with chain writing (Zincirleme yazma ile çıktı görüntüleme)
WRITE : / 'Result = ', gv_result,           " Display result value (Sonuç değerini göster)
          ' gv_number1 = ', gv_number1,    " Display first number (İlk sayıyı göster)
          ' gv_number2 = ', gv_number2.     " Display second number (İkinci sayıyı göster)
" Output: Result = 6 gv_number1 = 2 gv_number2 = 4 (Çıktı: Sonuç = 6 gv_sayi1 = 2 gv_sayi2 = 4)

" 📞 Subroutine call (Alt program çağrısı)
PERFORM calculate_vat.          " Call VAT calculation subroutine (KDV hesaplama alt programını çağır)

" 🛑 Program termination (Program sonlandırma)
RETURN.                         " Exit program execution (Program yürütmesinden çık)

" 📋 Subroutine definition (Alt program tanımı)
FORM calculate_vat.             " Define VAT calculation form (KDV hesaplama formunu tanımla)
  " 🔢 Local variable declaration (Yerel değişken bildirimi)
  DATA : lv_number3 TYPE i.     " Local integer variable (Yerel tam sayı değişkeni)
  " lv_number3 (sayı3) - local scope (yerel kapsam)

  " 📥 Local variable assignment (Yerel değişken ataması)
  lv_number3 = 7.               " Assign value 7 to local variable (Yerel değişkene 7 değerini ata)
  " Note: This variable is only accessible within this FORM (Not: Bu değişken sadece bu FORM içinde erişilebilir)
ENDFORM.                        " End of subroutine (Alt program sonu)
