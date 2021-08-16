abstract class Penghuni {
  final String name = "prana";
  void ruang_tamu();
  void dapur();
}

class Home extends Penghuni {
  void ruang_tamu() {
    print("halo ${name}");
  }
}

void main() {
  Home obj = new Home();
  obj.ruang_tamu();
}
