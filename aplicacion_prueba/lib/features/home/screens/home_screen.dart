import 'package:aplicacion_prueba/features/home/models/activity.dart';
import 'package:aplicacion_prueba/features/home/widgets/interactive_activity_card.dart';
import 'package:flutter/material.dart';




class MyHomePage extends StatefulWidget { // cambia
  const MyHomePage({super.key});

  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {
  
  // metodo build metodo prinicpal de todos los wd
  // indicamos que renderizar, ej un material app
  // en home page un scaffold y asi y asi.
  
  List <Activity> activityList = [
       Activity(title: "Comida",
            subtitle: "Meta: 2,000",
            trailingText: "1,500",
            icon: Icons.local_fire_department,
            iconColor: Colors.red),
       Activity(title: "Comida",
            subtitle: "Meta: 2,000",
            trailingText: "1,500",
            icon: Icons.local_fire_department,
            iconColor: Colors.red),
       Activity(title: "Comida",
            subtitle: "Meta: 2,000",
            trailingText: "1,500",
            icon: Icons.local_fire_department,
            iconColor: Colors.red),
  
  ];


  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
       
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white, // color para el texto de la appbare
        // control espacio
        


        title: Text('Hola Elizabeth'),
      ),


      body:
      Padding(
        // propiedad mas importnate casi todos tienen child o children
        padding: EdgeInsets.all(16), // funcion
        child: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: activityList.length,
        itemBuilder: (context,index){
        final currentActivity = activityList[index];
        
        return InteractiveActivityCard(activity: currentActivity);

        }        
        )

        /*
        child: Column(
          children:[
            Text("Resumen de Hoy",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        
          InteractiveActivityCard(
            title: "Pasos",
            subtitle: "Meta: 10,000",
            trailingText: "7,250",
            icon: Icons.directions_walk,
            iconColor: Colors.brown),

          InteractiveActivityCard(
            title: "Comida",
            subtitle: "Meta: 2,000",
            trailingText: "1,500",
            icon: Icons.local_fire_department,
            iconColor: Colors.red),
              
          
          InteractiveActivityCard(
            title: "Comida",
            subtitle: "Meta: 2,000",
            trailingText: "1,500",
            icon: Icons.local_fire_department,
            iconColor: Colors.red),


          InteractiveActivityCard(
            title: "Comida",
            subtitle: "Meta: 2,000",
            trailingText: "1,500",
            icon: Icons.local_fire_department,
            iconColor: Colors.red)

          ] 
          // indica coleccion []
        )
*/


      )
      
    ); 
  }
}


