import 'package:flutter/material.dart';
import 'package:flutter_parcial_2/temas/colores.dart';

class Cuenta extends StatefulWidget {
  const Cuenta({super.key});

  @override
  State<Cuenta> createState() => _CuentaState();
}

class _CuentaState extends State<Cuenta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: getAppbar(),
      body: getBody(),
    );
  }
  PreferredSizeWidget getAppbar(){
    return AppBar(
      backgroundColor: bgColor,
      centerTitle: true,
      leading: IconButton(
        icon: Text(
          "",
          style: TextStyle(
              fontSize: 14, color: primary, fontWeight: FontWeight.w500),
        ),
        onPressed: null,
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.account_box,
            color: primary,
          ),
          onPressed: null,
        )
      ],
      title: Row(
        children: [
          Text("Integrantes",
          style: TextStyle(
            fontSize: 25,color: white.withOpacity(1.0), fontWeight: FontWeight.w500
          ),
          )
        ],
      ),

    );
  }
  Widget getBody(){
    var size = MediaQuery.of(context).size;
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              Text("Carlos Mauricio Dueñas Guardado",
              style: TextStyle(
            fontSize: 25,color: black.withOpacity(1.0), fontWeight: FontWeight.w500),),
            SizedBox(
              height: 3,
            ),
            Text("25-0965-2018",
              style: TextStyle(
            fontSize: 25,color: black.withOpacity(1.0), fontWeight: FontWeight.w500),),
              SizedBox(
              height: 15,
            ),
             Text("Jose Manuel Flamenco Alas",
              style: TextStyle(
            fontSize: 25,color: black.withOpacity(1.0), fontWeight: FontWeight.w500),),
            Text("25-0912-2018",
              style: TextStyle(
            fontSize: 25,color: black.withOpacity(1.0), fontWeight: FontWeight.w500),),
            ],
          ),
          
          )
      ],
    );

  }
}