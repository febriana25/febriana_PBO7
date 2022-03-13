# FEBRIANA FATIMAH PUTRI
# 5210411246

# Multiple Inheritance

# Parent Class 1
class Perhitungan1:
    def penjumlahan(self, a, b):
        return a + b

# Parent Class 2


class Perhitungan2:
    def perkalian(self, a, b):
        return a * b  # 5210411246_FEBRIANA FATIMAH PUTRI

# Anak Class


class Hitung(Perhitungan1, Perhitungan2):
    def pembagian(self, a, b):
        return a / b  # 5210411246_FEBRIANA FATIMAH PUTRI


# Objek
h = Hitung()
print(h.penjumlahan(20, 20))
print(h.perkalian(5, 4))
print(h.pembagian(6, 12))
