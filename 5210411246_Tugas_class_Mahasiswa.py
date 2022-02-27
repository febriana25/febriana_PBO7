# FEBRIANA FATIMAH PUTRI
# 5210411246
class Mahasiswa:
    def __init__(self, nama, nim, prodi):
        self.nama = nama
        self.nim = nim  # 5210411246_Febriana Fatimah Putri
        self.prodi = prodi


mahasiswa1 = Mahasiswa("Febriana", "5210411246", "Informatika")
mahasiswa2 = Mahasiswa("Yurja", "5210411235", "Informatika")
mahasiswa3 = Mahasiswa("Putri", "5210411231", "Informatika")
mahasiswa4 = Mahasiswa("Hanaya", "5210411403", "Informatika")

kumpulan_mahasiswa = [mahasiswa1, mahasiswa2, mahasiswa3, mahasiswa4]
print("\n\tList Mahasiswa\n================================")
for mhs in kumpulan_mahasiswa:  # 5210411246_Febriana FAtimah Putri
    teks = '{} adalah mahasiswa {} dengan nim {}'. format(
        mhs.nama, mhs.prodi, mhs.nim)
    print(teks)
print("\n")
