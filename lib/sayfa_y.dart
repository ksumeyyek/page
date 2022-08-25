import 'package:flutter/material.dart';
class SayfaY extends StatefulWidget {
  const SayfaY({Key? key}) : super(key: key);

  @override
  State<SayfaY> createState() => _SayfaYState();
}

class _SayfaYState extends State<SayfaY> {

  Future<bool> geridonusTusu(BuildContext context) async{
    print("Navigation geri tıklandı");
    return false;//geri döndürmeyecek-false
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sayfa Y"),
          leading: IconButton(
              onPressed: () {
                print("appbar geri tuşu tıklandı");
                Navigator.of
                  (context).popUntil((route) => route.isFirst);
              },
              icon: const Icon(Icons.arrow_back))),
      body:WillPopScope(onWillPop: ()=>geridonusTusu(context),
    child:Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Center(
          child: Column(
            children: [
              ElevatedButton(onPressed: (){
                Navigator.of
                  (context).popUntil((route) => route.isFirst);


              }, child: const Text("Anasayfaya git")),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("yada geri tuşuna basarak dönebilirsin"),
              ),
            ],


          ),

        ),
      ),
      ),
    );
  }
}
