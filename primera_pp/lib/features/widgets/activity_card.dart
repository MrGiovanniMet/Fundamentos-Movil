//es necesario 
import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget { // hay que ver que sera stateless o statfull

  // propiedades y metodos
  // final una vez recibe ese valor no cambia
  final String title;
  final String subtittle;
  final String trailingText;
  final IconData icon;
  final Color iconColor;


  // constructor
  const ActivityCard({
    super.key,
    // required significa que es obligatorio pasarle un valor
    required this.title,
    required this.subtittle,
    required this.trailingText,
    required this.icon,
    required this.iconColor,

  });

  // metodo principal de widget sea statefull o stateless
  // regresa como tal un widget, recibe el contexto de la aplicacion
  @override
  // metodo que divuja al widget en pantalla.
  Widget build (BuildContext context){
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      // ListTile es un widget que permite crear una lista de elementos con icono, titulo, subtitulo y trailing
      child: ListTile(
        leading: Icon(icon, color: iconColor),
        title: Text(title,style: const TextStyle(fontWeight: FontWeight.bold),),
        subtitle: Text(subtittle),
        trailing: Text(trailingText),
      ),
    );
  }  


}