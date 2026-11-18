import 'package:flutter/material.dart';

class KeranjangProvider extends ChangeNotifier {
  final List<String> _items = [];

  List<String> get items => _items;

  int get jumlahItem => _items.length;

  void tambahItems(String namaProduk) {
    _items.add(namaProduk);
    notifyListeners();
  }

  void hapusItem(int noProduk) {
    _items.removeAt(noProduk);
    notifyListeners();
  }

  void kosongkan() {
    _items.clear();
    notifyListeners();
  }
}
  