import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(40.0),
                  child: const Center(
                    child: Icon(
                      Icons.account_circle_rounded,
                      color: Colors.green,
                      size: 100.0,
                    ),
                  ),
                ),
                TextField(
                  onChanged: (text){
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email"
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  onChanged: (text){
                    password = text;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Senha",
                  ),
                ),
                SizedBox(height: 20),
                RaisedButton(
                  color: Colors.green,
                  onPressed: (){
                    if(email == "paulo@gmail.com" && password == "1234"){
                      print("logado");
                    }
                    else{
                      print("Incorreto");
                    }
                  },
                  child: Text("Logar", style: TextStyle(color: Colors. white, fontSize: 15), ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
