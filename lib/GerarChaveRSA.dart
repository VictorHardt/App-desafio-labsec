import 'package:desafio_app_labsec/GerarNovaChave.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GerarChaveRSA extends StatefulWidget {
  const GerarChaveRSA({ Key? key }) : super(key: key);

  @override
  _GerarChaveRSAState createState() => _GerarChaveRSAState();
}

class _GerarChaveRSAState extends State<GerarChaveRSA> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gerar chave RSA"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset('assets/logo.png'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => GerarNovaChave()));
                  
                },
                child: Text("Gerar nova chave"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Voltar"),
              ),
            ]
          ),
        ),
      ),
    );
  }
}