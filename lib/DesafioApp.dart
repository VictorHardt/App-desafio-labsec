import 'package:desafio_app_labsec/AssinarLista.dart';
import 'package:desafio_app_labsec/GerarChaveRSA.dart';
import 'package:desafio_app_labsec/DispositivosLBE.dart';
import 'package:desafio_app_labsec/VerificarAssinatura.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DesafioApp extends StatelessWidget {
  const DesafioApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Desafio APP"),
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
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => DispositivosLBE2()));
                },
                child: Text("Dispositivos LBE"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => GerarChaveRSA()));
                },
                child: Text("Gerar chave RSA"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => AssinarLista()));
                },
                child: Text("Assinar lista"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => VerificarAssinatura()));
                },
                child: Text("Verificar assinatura"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}