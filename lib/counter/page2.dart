import 'package:flutter/material.dart';
import 'package:flutter_app/counter/cp.dart';
import 'package:provider/provider.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Consumer<Cp>(
              builder: (context, value, child) {
                return Text(
                  value.number.toString(),
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                );
              },
            ),

            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.read<Cp>().delete();
                  },
                  child: Icon(Icons.remove),
                ),

                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    context.read<Cp>().add();
                  },
                  child: Icon(Icons.add),
                ),
              ],
            ),

            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/3");
              },
              child: Text('Halaman 3'),
            ),
          ],
        ),
      ),
    );
  }
}
