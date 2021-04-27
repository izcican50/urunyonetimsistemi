import 'package:flutter/material.dart';

class  Communucation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return CommunucationState ();
  }

}

class CommunucationState extends State {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text("İletisim")


      ),

      body: ListView(
        padding: const EdgeInsets.only(left: 20, right: 20),
        children:<Widget> [
          ListTile(
            contentPadding: EdgeInsets.all(40),
            leading: Icon(Icons.account_balance,size: 40, color: Colors.red,),
            title: Text("Adres:", style: TextStyle(fontSize: 20),),
            subtitle: Text("Akabe Mah. Şehit Hüseyin Ceran Sok no:51  Karatay Konya"),

          ),

          ListTile(
            contentPadding: EdgeInsets.all(40),
            leading: Icon(Icons.phone,size: 40, color: Colors.green,),
            title: Text("Telefon:", style: TextStyle(fontSize: 20),),
            subtitle: Text("0216 520 65 80 "),
          ),

          ListTile(
            contentPadding: EdgeInsets.all(40),
            leading: Icon(Icons.mail_outline,size: 40,),
            title: Text("E-Posta:", style: TextStyle(fontSize: 20),),
            subtitle: Text("canizci@selcuk.edu.tr"),
          ),
          SizedBox(height: 20,),
          TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.indigoAccent)),
                labelText: "Mail Adresiniz"),
            validator: (value) {
              if (value.isEmpty) {
                return "Mail Giriniz";
              } else {
                return null;
              }
            },
            onSaved: (value) {

            },
          ),
          SizedBox(height: 4,),
          TextFormField(
            decoration: InputDecoration(

                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.indigoAccent), ),
                labelText: "Mesaj Yazın"),

            maxLines: 3,
            validator: (value) {
              if (value.isEmpty) {
                return "Mesaj Giriniz";
              } else {
                return null;
              }
            },
            onSaved: (value) {

            },
          ),


          ElevatedButton(child: Text("Mesaj Gönder"),

            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Mesaj "),
                      content: Text("Mesajınız Gönderildi"),
                    );
                  });
            },


          )
        ],
      ),



    );



  }
}

