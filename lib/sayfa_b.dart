import 'package:flutter/material.dart';
import 'package:odev4/sayfa_y.dart';

class SayfaB extends StatefulWidget {
  const SayfaB({Key? key}) : super(key: key);

  @override
  State<SayfaB> createState() => _SayfaBState();
}

class _SayfaBState extends State<SayfaB> {
  Future<bool> geridonusTusu(BuildContext context) async {
    print("Navigation geri tıklandı");
    return false; //geri döndürmeyecek-false
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sayfa B"),
      ),
      body: WillPopScope(onWillPop: ()=>geridonusTusu(context),
      child:Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SayfaY()));
                  },
                  child: const Text("Y sayfasına git")),
            ],
          ),
        ),
      ),
    ),
    );
  }
}
