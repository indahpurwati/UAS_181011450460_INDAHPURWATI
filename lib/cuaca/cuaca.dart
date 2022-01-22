import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Cuaca extends StatefulWidget {
  @override
  _CuacaState createState() => _CuacaState();
}

class _CuacaState extends State<Cuaca> {
  final String apiUrl =
      "http://api.openweathermap.org/data/2.5/weather?q=JAKARTA&appid=c939c6bd8768367c0313576cdd7eedf7&lang=id";
  Future<List<dynamic>> _fecthDataUsers() async {
    var result = await http.get(Uri.parse(apiUrl));
    return json.decode(result.body)['data'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "181011450493 - INDAH PURWATI",
          style: TextStyle(fontSize: 15),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  new Flexible(
                    child: new TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Masukan Nama Kota',
                      ),
                    ),
                  ),
                  SizedBox(width: 25),
                  RaisedButton(
                    onPressed: () {},
                    child: Text(
                      "Cari",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              Text(
                'JAKARTA',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Clouds',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Image.network(
                  'http://openweathermap.org/img/wn/10d@2x.png',
                  fit: BoxFit.contain,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'SUHU',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    '30 Celcius',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'KECEPATAN ANGIN',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    '1.5 km/jam',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'LATITUDE',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    '-6.3428',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'LONGITUDE',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    '106.7383',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
