import 'package:flutter/material.dart';
import 'package:flutter_parcial_2/temas/colores.dart';

class Formapago extends StatefulWidget {
  const Formapago({super.key});

  @override
  State<Formapago> createState() => _FormapagoState();
}

class _FormapagoState extends State<Formapago> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: getAppBar(),
      body: getBody(),
    );
  }
  PreferredSizeWidget getAppBar(){
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
            Icons.card_travel_outlined,
            color: primary,
          ),
          onPressed: null,
        )
      ],
      title: Row(
        children: [
          Text("Forma de Pago",
          style: TextStyle(
            fontSize: 25,color: white.withOpacity(1.0), fontWeight: FontWeight.w500
          ),
          )
        ],
      ),

    );
  }
  Widget getBody(){
   return Column(
    children: [
        SizedBox(
        height: 15,
      ),
      _TarjetaInput(),
      
      SizedBox(
        height: 15,
      ),
      _Nombre(),
           SizedBox(
        height: 15,
      ),
      _Fecha(),
      
      SizedBox(
        height: 15,
      ),
      _CCV(),
      SizedBox(
        height: 15,
        
      ),
      _Guardar()
    ],
    );

  }
   Container _TarjetaInput(){
    return Container(
      decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          border: Border.all(color:white)),
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: TextFormField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
              icon: Icon(Icons.card_membership, color: bgColor),
              hintText: 'Ingrese el Numero de Tarjeta',
              labelText: 'Numero de Tarjeta',
              border: InputBorder.none,),
        )
    );
   }
    Container _Nombre(){
    return Container(
      decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          border: Border.all(color:white)),
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: TextFormField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
              icon: Icon(Icons.account_box, color: bgColor),
              hintText: 'Ingrese el Nombre de Tarjeta',
              labelText: 'Nombre',
              border: InputBorder.none,),
        )
    );
   }
   Container _Fecha(){
    return Container(
      decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          border: Border.all(color:white)),
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: TextFormField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
              icon: Icon(Icons.card_membership, color: bgColor),
              hintText: 'MM/YYYY',
              labelText: 'Fecha Vencimiento',
              border: InputBorder.none,),
        )
    );
   }
    Container _CCV(){
    return Container(
      decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          border: Border.all(color:white)),
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: TextFormField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
              icon: Icon(Icons.account_box, color: bgColor),
              hintText: 'Ingrese el Numero CCV de Tarjeta',
              labelText: 'CCV',
              border: InputBorder.none,),
                obscureText: true,
        )
    );
    }
    Container _Guardar(){
    return Container(
      decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: ElevatedButton(
          onPressed: () {
            print("Button pressed");
            },
            child: Text("Guardar"),
            )
    );
  
   }
   
}