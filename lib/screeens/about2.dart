import 'package:flutter/material.dart';

class  About extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return AboutState ();
  }

}

class AboutState extends State {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.deepPurpleAccent,
        title: Text("Hakkımızda"),

      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Text("Bu program Selçuk Üniversitesi Teknoloji Fakültesi Bilgisayar Mühendisliği bölümü, Mobil Programlama dersi kapsamında  193311074 numaralı öğrenci Can İZCİ tarafından gerçekleştirilmiştir ",
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 16.0,
            letterSpacing: 2.0,



          ),
        ),
      ),


    );

  }
}

