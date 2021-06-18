import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AssinarLista extends StatelessWidget {
  const AssinarLista({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assinar lista"),
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
                  // Navigator.pop(context);
                },
                child: Text("Assinar novamente"),
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