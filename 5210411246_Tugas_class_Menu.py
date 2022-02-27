# FEBRIANA FATIMAH PURI
# 5210411246
class Menu:
    def __init__(self, nama, deskripsi, harga):
        self.nama = nama
        self.deskripsi = deskripsi
        self.harga = harga


minuman1 = Menu("Jus Jambu", "Jus jambu merah tanpa gula", 8500)
minuman2 = Menu("Jus Alpukat", "Jus alpukat dengan gula merah", 15000)
minuman3 = Menu("Jus Alpukat Ektra Milk",
                "Jus alpukat dengan campuran susu cokelat dan tapuran kepingan choco", 15000)
minuman4 = Menu(
    "Red & Smooth", "Smoothie pisang susu dengan strawberry", 17500)

makanan1 = Menu("Nasi goreng", "Nasi goreng ayam", 15000)
makanan2 = Menu("Udang", "Udang bakar ", 30000)
makanan3 = Menu("Nasi Uduk", "Nasi kuning", 20000)
makanan4 = Menu("Bubur Ayam", "Bubur Ayam spesial", 12000)

pilihan_makanan = [makanan1, makanan2, makanan3, makanan4]
pilihan_minuman = [minuman1, minuman2, minuman3, minuman4]

print("\nDaftar Menu Makanan\n==========================")
for mkn in pilihan_makanan:
    t = '{} harga Rp {}, {}'. format(mkn.nama, mkn.harga, mkn.deskripsi)
    print(t)
print("\nDaftar Menu Minuman\n==========================")
for mn in pilihan_minuman:
    teks = '{} harga Rp {}, {}'. format(mn.nama, mn.harga, mn.deskripsi)
    print(teks)
print("\n")
