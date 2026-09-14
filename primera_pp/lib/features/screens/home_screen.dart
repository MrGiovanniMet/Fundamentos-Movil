import 'package:flutter/material.dart';
import '../models/activity.dart';

import 'package:primera_pp/features/widgets/interactive_activity_card.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
 
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
 
class _MyHomePageState extends State<MyHomePage> {
  
  //definir tipo de dato la clase que cree, son objetos no widgets
  List<Activity> activities=[
  Activity(title: "Ciclismo", subtitle: "Meta 20 km", trailing: "15 km", icon: Icons.directions_bike, iconColor: Colors.green),
  Activity(title: "Yoga", subtitle: "Meta 30 min", trailing: "20 min", icon: Icons.self_improvement, iconColor: Colors.purple),
  Activity(title: "Natacion", subtitle: "Meta 1000 Metros", trailing: "750", icon: Icons.pool, iconColor: Colors.blue),
  Activity(title: "Desayuno", subtitle: "Meta 500 calorias", trailing: "300 calorias", icon: Icons.breakfast_dining, iconColor: Colors.orange),
  Activity(title: "Almuerzo", subtitle: "Meta 800 calorias", trailing: "600 calorias", icon: Icons.lunch_dining, iconColor: Colors.red),
Activity(title: "Ciclismo", subtitle: "Meta 20 km", trailing: "15 km", icon: Icons.directions_bike, iconColor: Colors.green),
  Activity(title: "Yoga", subtitle: "Meta 30 min", trailing: "20 min", icon: Icons.self_improvement, iconColor: Colors.purple),
  Activity(title: "Natacion", subtitle: "Meta 1000 Metros", trailing: "750", icon: Icons.pool, iconColor: Colors.blue),
  Activity(title: "Desayuno", subtitle: "Meta 500 calorias", trailing: "300 calorias", icon: Icons.breakfast_dining, iconColor: Colors.orange),
  Activity(title: "Almuerzo", subtitle: "Meta 800 calorias", trailing: "600 calorias", icon: Icons.lunch_dining, iconColor: Colors.red),
Activity(title: "Ciclismo", subtitle: "Meta 20 km", trailing: "15 km", icon: Icons.directions_bike, iconColor: Colors.green),
  Activity(title: "Yoga", subtitle: "Meta 30 min", trailing: "20 min", icon: Icons.self_improvement, iconColor: Colors.purple),
  Activity(title: "Natacion", subtitle: "Meta 1000 Metros", trailing: "750", icon: Icons.pool, iconColor: Colors.blue),
  Activity(title: "Desayuno", subtitle: "Meta 500 calorias", trailing: "300 calorias", icon: Icons.breakfast_dining, iconColor: Colors.orange),
  Activity(title: "Almuerzo", subtitle: "Meta 800 calorias", trailing: "600 calorias", icon: Icons.lunch_dining, iconColor: Colors.red),
Activity(title: "Ciclismo", subtitle: "Meta 20 km", trailing: "15 km", icon: Icons.directions_bike, iconColor: Colors.green),
  Activity(title: "Yoga", subtitle: "Meta 30 min", trailing: "20 min", icon: Icons.self_improvement, iconColor: Colors.purple),
  Activity(title: "Natacion", subtitle: "Meta 1000 Metros", trailing: "750", icon: Icons.pool, iconColor: Colors.blue),
  Activity(title: "Desayuno", subtitle: "Meta 500 calorias", trailing: "300 calorias", icon: Icons.breakfast_dining, iconColor: Colors.orange),
  Activity(title: "Almuerzo", subtitle: "Meta 800 calorias", trailing: "600 calorias", icon: Icons.lunch_dining, iconColor: Colors.red),

  ];





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        title: const Text("Panel de Actividad Fisica"),
      ),
      body: Padding(
  padding: EdgeInsets.all(16.0),
  /*
  child: Column(
    children: [
      Text(
        "Resumen de Hoy",
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
      Card(
        child: ListTile(
          leading: Icon(Icons.directions_walk),
          title: Text("Pasos Diarios"),
          subtitle: Text("Meta de pasos: 10,000"),
          trailing: Text("7,450"),
        ),
      ),
      SizedBox(height: 10),
      Card(
        child: ListTile(
          leading: Icon(Icons.fitness_center),
          title: Text("Rutina de Fuerza"),
          subtitle: Text("Tren Superior/ Pesas"),
          trailing: Text("Hecho"),
        ),
      ),
      SizedBox(height: 10),
      Card(
        child: ListTile(
          leading: Icon(Icons.pool),
          title: Text("Natacion"),
          subtitle: Text("Meta 1,000 Metros"),
          trailing: Text("750"),
        ),
      ),
      ActivityCard(
        title: "Ciclismo",
        subtittle: "Meta 20 km",
        trailingText: "15 km",
        icon: Icons.directions_bike,
        iconColor: Colors.green,
      ),
      ActivityCard(
        title: "Yoga",
        subtittle: "Meta 30 min",
        trailingText: "20 min",
        icon: Icons.self_improvement,
        iconColor: Colors.purple,
      ),
      InteractiveActivityCard(
        title: "Pasos Diarios",
        subtitle: "Meta 1000",
        trailing: "750",
        icon: Icons.directions_walk,
        iconColor: Colors.green,
      ),
      InteractiveActivityCard(
        title: "Rutina de Fuerza",
        subtitle: "Tren Superior/ Pesas",
        trailing: "Hecho",
        icon: Icons.fitness_center,
        iconColor: Colors.orange,
      ),
      InteractiveActivityCard(
        title: "Natacion",
        subtitle: "Meta 1000 Metros",
        trailing: "750",
        icon: Icons.pool,
        iconColor: Colors.blue,
      ),
      InteractiveActivityCard(
        title: "Natacion",
        subtitle: "Meta 1000 Metros",
        trailing: "750",
        icon: Icons.pool,
        iconColor: Colors.blue,
      ),
    ],
  ),
  */
  // en itembuilder que es lo que va a crear en lo que to le diga
  child: ListView.builder(
    padding: EdgeInsets.all(8),
    
    itemCount: activities.length,
    itemBuilder:(context,index) {
    final currentActivity = activities[index];

  return InteractiveActivityCard(
    activity: currentActivity
  );

  }, 


),
    ),
    );
  }
}
 
// singular widgets
// plural valores

