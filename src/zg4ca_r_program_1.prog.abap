*&---------------------------------------------------------------------*
*& Report ZG4CA_R_PROGRAM_1
*&---------------------------------------------------------------------*
*& 👨‍💻 Author  : Cemil Aksel
*& 📚 Subject : Text Definition (Metin Tanımlama)
*& 📅 Date    : 20.02.2025
*&---------------------------------------------------------------------*
REPORT zg4ca_r_program_1.

" 📝 Simple text output (Basit metin çıktısı)
WRITE 'LEARNING ABAP'. " Display text on screen (Ekrana metin yazdır)
* Output: LEARNING ABAP (Çıktı: ABAP ÖĞRENİYORUM)

" 🔗 New line and chain writing (Yeni satır ve zincirleme yazma)
WRITE / : 'text definition', 'variable definition'. " Chain multiple texts with comma (Virgül ile birden fazla metin zincirle)
* / = new line (yeni satır)
* : = chain operator (zincirleme operatörü)
* Output: text definition variable definition (Çıktı: metin tanımlama değişken tanımlama)

" ⏭️ Skip lines command (Satır atlama komutu)
SKIP 4. " Skip 4 empty lines (4 boş satır atla)
* Creates vertical spacing (Dikey boşluk oluşturur)

" 📄 Text after skipped lines (Atlanan satırlardan sonra metin)
WRITE / 'lines skipped'. " Display text after skip (Atlamadan sonra metin göster)
* Output: lines skipped (Çıktı: satır atlandı)

" ➖ Underline command (Alt çizgi komutu)
ULINE. " Draw horizontal line (Yatay çizgi çiz)
* Creates separator line (Ayırıcı çizgi oluşturur)

" 📝 Text with underline effect (Alt çizgi efekti ile metin)
WRITE / 'underline demonstration'. " Display text after line (Çizgiden sonra metin göster)
* Output: underline demonstration (Çıktı: underline gösterimi)
