import 'package:flutter/material.dart';

class NotaPesananPage extends StatelessWidget {
  const NotaPesananPage({super.key});

  static const List<Map<String, dynamic>> pesananDummy = [
    {
      'id': 'M01',
      'jumlah': '2',
      'harga': '25000',
      'subtotal': '50000',
    },
    {
      'id': 'M04',
      'jumlah': '1',
      'harga': '15000',
      'subtotal': '15000',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nota Pesanan'),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('Reset'),
          ),
        ],
      ),
      body: pesananDummy.isEmpty
          ? const Center(
              child: Text(
                'Belum ada pesanan yang dipilih',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: pesananDummy.length,
                    itemBuilder: (context, index) {
                      final p = pesananDummy[index];
                      return Card(
                        margin: const EdgeInsets.only(bottom: 10),
                        child: ListTile(
                          title: Text('Menu ID: ${p['id']}'),
                          subtitle: Text(
                            'Jumlah: ${p['jumlah']} x Rp ${p['harga']} = Rp ${p['subtotal']}',
                          ),
                          trailing: IconButton(
                            icon: const Icon(Icons.delete_outline, color: Colors.red),
                            onPressed: () {},
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surfaceContainerHighest,
                    border: Border(
                      top: BorderSide(color: Theme.of(context).dividerColor),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Bayar:',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Rp 65000',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
