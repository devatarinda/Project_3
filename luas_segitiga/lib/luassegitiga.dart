import 'package:flutter/material.dart';

class LuasSegitiga extends StatefulWidget {
  @override
  _LuasSegitigaState createState() => _LuasSegitigaState();
}

class _LuasSegitigaState extends State<LuasSegitiga> {
  double alas = 0;
  double tinggi = 3.14;
  double luas = 0;
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Luas Bangun Datar',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.orange,
        ),
        body: Container(
            height: 400,
            margin: const EdgeInsets.all(33),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.orange.shade100,
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Menghitung Luas Segitiga",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Text("Alas: "),
                  Expanded(
                      child: TextField(
                    onChanged: (txt) {
                      setState(() {
                        alas = double.parse(txt);
                      });
                    },
                    keyboardType: TextInputType.number,
                  )),
                  Text("Tinggi: "),
                  Expanded(
                      child: TextField(
                    onChanged: (txt) {
                      setState(() {
                        tinggi = double.parse(txt);
                      });
                    },
                    keyboardType: TextInputType.number,
                  )),
                  SizedBox(
                    height: 13,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        luas = 0.5 * alas * tinggi;
                      });
                    },
                    child: Text("Hitung"),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "HASIL : $luas",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ])),
      ),
    );
  }
}
