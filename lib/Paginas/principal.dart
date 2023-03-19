import 'package:flutter/material.dart';
import 'package:flutter_parcial_2/Paginas/cocina.dart';
import 'package:flutter_parcial_2/Paginas/comestibles.dart';
import 'package:flutter_parcial_2/Paginas/cuenta.dart';
import 'package:flutter_parcial_2/Paginas/formapago.dart';
import 'package:flutter_parcial_2/temas/colores.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  int paginaIndex = 0; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }
  Widget getBody(){
    return IndexedStack(
      index: paginaIndex,
      children: [
        Cocina(),
        Formapago(),
        Comestibles(),
        Cuenta(),
      ],
    );
  }
  Widget getFooter(){
    List iconsItems= [
      LineIcons.receipt,
      LineIcons.gripLines,
      LineIcons.alternateTablet,
      LineIcons.gem
    ];
    List textoItems=[
      "Cocina",
      "Forma de Pago",
      "Comestibles",
      "Cuenta"
    ];
    return Container(
      height: 90,
      width: double.infinity ,
      padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:
          List.generate(textoItems.length, (index){
            return GestureDetector(
              onTap: (){
                setState(() {
                  paginaIndex=index;
                });
              },
              child: Column(
                children: [
                  Icon(iconsItems[index],
                  color: paginaIndex==index?primary:white.withOpacity(0.5)),
                  SizedBox(height: 5),
                  Text(textoItems[index],
                  style: TextStyle(fontSize: 10,
                  color: paginaIndex==index?primary:white.withOpacity(0.5)),
                  ),
                ],
              
              ),
            );
          },
        ),
      ),
      ),
      
    );
  }
}