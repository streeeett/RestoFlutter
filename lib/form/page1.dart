import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final TextEditingController _username = TextEditingController();
  final _key = GlobalKey<FormState>();
  @override
  void dispose() {
    _username.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form Input')),
      body: Center(
        child: Padding(
          padding: EdgeInsetsGeometry.all(10),
          child: Form(
            key: _key,
            child: Column(
              children: [
                TextFormField(
                  controller: _username,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Nama : ",
                    hintText: "Masukkan nama anda",
                    suffixText: "....",
                    prefixIcon: Icon(Icons.person),
                  ),
                  // obscureText: true,
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    setState(() {});
                  },
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Nama pengguna wajib di isi";
                    } else if (value.length <= 6) {
                      return "Nama pengguna minumal 6 karakter";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                Text(_username.text),

                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (!_key.currentState!.validate()) return;
                    print(_username.text);
                  },
                  child: Text('Simpan'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
