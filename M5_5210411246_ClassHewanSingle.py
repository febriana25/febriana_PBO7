# FEBRIANA FATIMAH PUTRI
# 5210411246

# Single Inheritance

# Parent Class
class Hewan:
    def bersuara(self):
        print("Kucing Bersuara")

# Anak class mewarisi parent class


class Kucing(Hewan):
    def suara(self):
        print("meong...meong")


# Objek
cat = Kucing()
cat.suara()  # 5210411246_Febriana Fatimah Putri
cat.bersuara()
