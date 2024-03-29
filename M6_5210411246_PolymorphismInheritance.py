# FEBRIANA FATIMAH PUTRI
# 5210411246

# Polymorphism dengan Inheritance
class Burung:
    def intro(self):
        print("Di dunia ini ada beberapa type berbeda dari spesies burung")

    def terbang(self):
        print(
            "Hampir semua burung dapat terbang, namun ada beberapa yang tidak bisa terbang")


class Elang(Burung):
    def terbang(self):
        print("Elang dapat terbang")


class BurngUnta(Burung):
    def terbang(self):
        print("Burung unta tidak dapat terbang")


obj_burung = Burung()
obj_elang = Elang()
obj_burung_unta = BurngUnta()

obj_burung.intro()
obj_burung.terbang()

obj_elang.intro()
obj_elang.terbang()

obj_burung_unta.intro()
obj_burung_unta.terbang()
