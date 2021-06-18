import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';

class DispositivosLBE2 extends StatefulWidget {
  const DispositivosLBE2({ Key? key }) : super(key: key);

  @override
  _DispositivosLBE2State createState() => _DispositivosLBE2State();
}

class _DispositivosLBE2State extends State<DispositivosLBE2> {
  final List devicesList = List.empty(growable: true);
  void _atualizarblue() {
    setState(() {
      
      FlutterBlue flutterBlue = FlutterBlue.instance;

      // Start scanning
      flutterBlue.startScan(timeout: Duration(seconds: 4));

      // Listen to scan results
      var subscription = flutterBlue.scanResults.listen((results) {
          // do something with scan results
          for (ScanResult r in results) {
            if (!devicesList.contains('${r.device.id} ${r.device.name} found!')){
              print(r);
              devicesList.add('${r.device.id} ${r.device.name} found!');
            }
          }
      });
      // Stop scanning
      flutterBlue.stopScan();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dispositivos LBE"),
      ),
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset('assets/logo.png'),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: devicesList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('${devicesList[index]}'),
                    contentPadding: EdgeInsets.symmetric(horizontal: 100),
                    tileColor: Colors.blue,
                  );
                },
              ),
              ElevatedButton(
                onPressed: _atualizarblue,
                child: Text("Atualizar lista"),
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