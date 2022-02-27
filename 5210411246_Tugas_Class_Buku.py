# FEBRIANA FATIMAH PUTRI
# 5210411246

class Buku:
    def __init__(self, judul, pengarang, tahun_terbit):
        self.judul = judul
        self.pengarang = pengarang
        self.tahun_terbit = tahun_terbit  # 5210411246_Febriana fatimah putri


buku1 = Buku("This Time Tomorrow", "Emma Straub", 2022)
buku2 = Buku("Looking for Alaska", "John Geen", 2005)
buku3 = Buku("Maaf Untuk Papa", "Ria RIcis", 2021)

kumpulan_buku = [buku1, buku2, buku3]
print("\n\tList Buku\n================================")
for buku in kumpulan_buku:  # 5210411246_FebrIana fatimah putri
    teks = 'Buku {} karangan {} pertama kali diterbitkan tahun {}'.format(
        buku.judul, buku.pengarang, buku.tahun_terbit)
    print(teks)
print("\n")
