import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ["1.- uno","2.- dos","3.- tres","4.- cuatro","5.- cinco"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes Temp"),
      ),
      body: ListView(
        //children: _crearItems()
        children: _crearItemsCorta()
      ),
    );
  }

  List<Widget> _crearItems(){

    List<Widget> lista = new List<Widget>();

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
        subtitle: Text("Cualquier cosa"),
      );

      // lista.add(tempWidget);
      // lista.add(Divider());
      lista..add(tempWidget)
           ..add(Divider());
    }
    return lista;
  }

  List<Widget> _crearItemsCorta(){
    
    return opciones.map((item){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item),
            subtitle: Text("Cualquier cosa"),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){
              print("Presionar click");
            },
          ),
          Divider()
        ],
      );
    }).toList();
  }
}