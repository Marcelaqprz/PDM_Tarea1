import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int likeCounter = 999999;
  bool pressedM = false, pressedC = false, pressedT = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App ITESO'),
      ),
      body: ListView(
        children: [
          Image.network(
            "https://agenda.iteso.mx/wp-content/uploads/2020/04/iteso-insta.jpg",
          ),
          Container(
            height: 10,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("ITESO Universidad Jesuita de Guadalajara",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("San Pedro Tlaquepaque",
                      style: TextStyle(color: Colors.grey)),
                ],
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    likeCounter += 1;
                  });
                },
                icon: Icon(Icons.thumb_up_alt_outlined, color: Colors.indigo),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    likeCounter -= 1;
                  });
                },
                icon: Icon(Icons.thumb_down_alt_outlined, color: Colors.indigo),
              ),
              Flexible(
                child: new Container(
                  child:
                      new Text('$likeCounter', overflow: TextOverflow.ellipsis),
                ),
              ),
            ],
          ),
          //FILA CON ICONOS GRANDES
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        pressedM = !pressedM;
                      });
                      final snackBar = SnackBar(
                        content: Text("Enviar correo"),
                        duration: const Duration(seconds: 2),
                        action: SnackBarAction(
                            label: "Cancelar",
                            onPressed: () {
                              ScaffoldMessenger.of(context)
                                  .hideCurrentSnackBar();
                            }),
                      );
                      if (pressedM == true) {
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    },
                    icon: Icon(Icons.mail_outline,
                        color: (pressedM) ? Colors.indigo : Colors.black,
                        size: 60),
                  ),
                  Container(
                    height: 25,
                  ),
                  Text("Correo")
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        pressedC = !pressedC;
                      });
                      final snackBar = SnackBar(
                        content: Text("Realizar llamada"),
                        duration: const Duration(seconds: 2),
                        action: SnackBarAction(
                            label: "Cancelar",
                            onPressed: () {
                              ScaffoldMessenger.of(context)
                                  .hideCurrentSnackBar();
                            }),
                      );
                      if (pressedC == true) {
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    },
                    icon: Icon(Icons.add_ic_call_outlined,
                        color: (pressedC) ? Colors.indigo : Colors.black,
                        size: 60),
                  ),
                  Container(
                    height: 25,
                  ),
                  Text("Llamada")
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        pressedT = !pressedT;
                      });
                      final snackBar = SnackBar(
                        content: Text("Ir al ITESO"),
                        duration: const Duration(seconds: 2),
                        action: SnackBarAction(
                            label: "Cancelar",
                            onPressed: () {
                              ScaffoldMessenger.of(context)
                                  .hideCurrentSnackBar();
                            }),
                      );
                      if (pressedT == true) {
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    },
                    icon: Icon(Icons.directions,
                        color: (pressedT) ? Colors.indigo : Colors.black,
                        size: 60),
                  ),
                  Container(
                    height: 25,
                  ),
                  Text("Ruta")
                ],
              ),
            ],
          ),
          //TEXTO DEL ITESO
          Container(
            height: 20,
          ),
          Text(
              "El ITESO, Universidad Jesuita de Guadalajara (Instituto Tecnol??gico y de Estudios Superiores de Occidente), es una universidad privada ubicada en la Zona Metropolitana de Guadalajara, Jalisco, M??xico, fundada en el a??o 1957. Fundada en el a??o de 1957 por el Padre Luis Hern??ndez Prieto S.J., Jos?? Aguilar Figueroa y el ingeniero Jos?? Fern??ndez del Valle y Ancira, entre otros, la universidad ha tenido una larga trayectoria.",
              textAlign: TextAlign.justify),
        ],
      ),
    );
  }
}
