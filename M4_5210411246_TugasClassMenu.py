# FEBRIANA FATIMAH PUTRI
# 5210411246

# MENAMBAHKAN ATRIBUT PRIVATE
class Menu:
    def __init__(self, nama, deskripsi, harga, stok):
        self.nama = nama
        self.deskripsi = deskripsi
        self.harga = harga  # 5210411246_Febriana Fatimah Putri
        self.__stok = stok

    def Tampil(self):
        print(
            f"{self.nama} harga Rp {self.harga} \n---> {self.deskripsi} sisa stok {self.__stok}\n")


minuman1 = Menu("Jus Jambu", "Jus jambu merah tanpa gula", 8500, 6)
minuman2 = Menu("Jus Alpukat", "Jus alpukat dengan gula merah", 15000, 7)
minuman3 = Menu("Jus Alpukat Ektra Milk",
                "Jus alpukat dengan campuran susu cokelat dan tapuran kepingan choco", 15000, 11)
minuman4 = Menu(
    "Red & Smooth", "Smoothie pisang susu dengan strawberry", 17500, 9)

makanan1 = Menu("Nasi Goreng", "Nasi Goreng Ayam", 15000, 10)
makanan2 = Menu("Udang", "Udang Bakar", 30000, 4)
makanan3 = Menu("Nasi Uduk", "Nasi Uduk spesial", 20000, 15)
makanan4 = Menu("Bubur Ayam", "Bubur Ayam Spesial", 12000, 5)

pilihan_makanan = [makanan1, makanan2, makanan3, makanan4]
pilihan_minuman = [minuman1, minuman2, minuman3,
                   minuman4]  # 5210411246_Febriana Fatimah Putri

print("\nDaftar Menu Makanan\n==========================")
for mkn in pilihan_makanan:
    mkn.Tampil()
print("\nDaftar Menu Minuman\n==========================")
for mn in pilihan_minuman:  # 5210411246_Febriana Fatimah Putri
    mn.Tampil()
print("\n")
