import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_parcial_2/json/groceries_json.dart';
import 'package:flutter_parcial_2/temas/colores.dart';

class Comestibles extends StatefulWidget {
  const Comestibles({super.key});

  @override
  State<Comestibles> createState() => _ComestiblesState();
}

class _ComestiblesState extends State<Comestibles> {
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
            Icons.safety_check,
            color: primary,
          ),
          onPressed: null,
        )
      ],
      title: Row(
        children: [
          Text("Comestible",
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
    return Column(
      children: List.generate(groceries.length, (index) {
      return Padding(
        padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
        child: FadeInDown(
          duration: Duration(milliseconds: 100*index),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: NetworkImage(groceries[index]['img']),
                      fit: BoxFit.cover)
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          groceries[index]['name'],
                          style: TextStyle(
                            fontSize: 16,
                            color: black,
                            fontWeight: FontWeight.w600
                          ),)
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      );
      },
      ),
    );
  }
}