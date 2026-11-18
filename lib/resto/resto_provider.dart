import 'package:flutter/material.dart';

class RestoProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> _pesanan = [];

  List<Map<String, dynamic>> get pesanan => _pesanan;

  int get totalItemPesanan {
    int total = 0;

    for (var item in _pesanan) {
      total += item['jumlah'] as int;
    }

    return total;
  }

  int get totalBayar {
    int total = 0;

    for (var item in _pesanan) {
      total += item['subtotal'] as int;
    }

    return total;
  }

  void tambahPesanan(Map<String, dynamic> item) {
    final String id = item['id'].toString();

    final index = _pesanan.indexWhere((pesanan) => pesanan['id'] == id);

    if (index != -1) {
      _pesanan[index]['jumlah']++;
      _pesanan[index]['subtotal'] =
          _pesanan[index]['jumlah'] * _pesanan[index]['harga'];
    } else {
      int harga = int.parse(item['harga'].toString());

      _pesanan.add({
        'id': item['id'],
        'jumlah': 1,
        'harga': harga,
        'subtotal': harga,
      });
    }

    notifyListeners();
  }

  void hapusItemPesanan(String id) {
    _pesanan.removeWhere((item) => item['id'] == id,);
    notifyListeners();
  }

  void kosongkan() {
    _pesanan.clear();
    notifyListeners();
  }
}
