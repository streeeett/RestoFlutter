import 'package:flutter/material.dart';
import 'package:flutter_app/counter/cp.dart';
import 'package:provider/provider.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(context.read<Cp>().number.toString()),

          SizedBox(height: 10),
          Text('Data Page 2'),

          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Halaman 2'),
          ),
        ],
      ),
    );
  }
}
