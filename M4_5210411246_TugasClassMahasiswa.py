# FEBRIANA FATIMAH PUTRI
# 5210411246

# MENAMBAHKAN ATRIBUT PRIVATE
class Mahasiswa:
    def __init__(self, nama, nim, prodi, universitas):
        self.nama = nama
        self.nim = nim  # 5210411246_Febriana Fatimah Putri
        self.prodi = prodi
        self.__universitas = universitas

    def Tampil(self):
        print(f"{self.nama} adalah mahasiswa {self.__universitas} prodi {self.prodi} dengan nim {self.nim}")


mahasiswa1 = Mahasiswa("Febriana", "5210411246",
                       "Informatika", "Universitas Teknologi Yogyakarta")
mahasiswa2 = Mahasiswa("Yurja", "5210411235", "Informatika",
                       "Universitas Teknologi Yogyakarta")
mahasiswa3 = Mahasiswa("Putri", "5210411231", "Informatika",
                       "Universitas Teknologi Yogyakarta")
mahasiswa4 = Mahasiswa("Hanaya", "5210411403", "Informatika",
                       "Universitas Teknologi Yogyakarta")

kumpulan_mahasiswa = [mahasiswa1, mahasiswa2, mahasiswa3, mahasiswa4]
print("\n\tList Mahasiswa\n================================")
for mhs in kumpulan_mahasiswa:  # 5210411246_Febriana Fatimah Putri
    mhs.Tampil()
print("\n")
