import 'package:flutter/material.dart';
import 'package:odev4/sayfa_b.dart';

class SayfaA extends StatefulWidget {
  const SayfaA({Key? key}) : super(key: key);

  @override
  State<SayfaA> createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {

  Future<bool> geridonusTusu(BuildContext context) async {
    print("Navigation geri tıklandı");
    return false; //geri döndürmeyecek-false
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sayfa A")
        ,
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
                        MaterialPageRoute(builder: (context) => SayfaB()));
                  },
                  child: const Text("B sayfasına git")),
            ],
          ),
        ),
      ),
    ),
    );
  }
}
