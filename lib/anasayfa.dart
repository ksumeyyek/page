import 'package:flutter/material.dart';
import 'package:odev4/sayfa_a.dart';
import 'package:odev4/sayfa_x.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Anasayfa"),),
      body:Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Center(
          child: Column(
            children: [
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SayfaA()));


              }, child: const Text("A sayfasına git")),

              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SayfaX()));


              }, child: const Text("X sayfasına git")),
            ],


          ),

        ),
      ),
    );
  }
}
