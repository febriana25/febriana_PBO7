# FEBRIANA FATIMAH PUTRI
# 5210411246

class Buku:
    def __init__(self, judul, pengarang, tahun_terbit, jmlh_halaman):
        self.judul = judul
        self.pengarang = pengarang
        self.tahun_terbit = tahun_terbit  # 5210411246_Febriana fatimah putri
        self.___jmlh_halaman = jmlh_halaman

    def Tampil(self):
        print(
            f"Buku {self.judul} karangan {self.pengarang} pertama kali diterbitkan tahun {self.tahun_terbit}")
        print(
            f"Buku {self.judul} jumlah halamannya adalah {self.__jmlh_halaman}\n")


buku1 = Buku("This Time Tomorrow", "Emma Straub", 2022, 225)
buku2 = Buku("Looking for Alaska", "John Geen", 2005, 300)
buku3 = Buku("Maaf Untuk Papa", "Ria RIcis", 2021, 215)

kumpulan_buku = [buku1, buku2, buku3]
print("\n\tList Buku\n================================")
for buku in kumpulan_buku:  # 5210411246_FebrIana fatimah putri
    buku. Tampil()
print("\n")
