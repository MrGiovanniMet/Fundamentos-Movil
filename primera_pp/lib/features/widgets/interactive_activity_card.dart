import 'package:flutter/material.dart';
import 'package:primera_pp/features/models/activity.dart';


class InteractiveActivityCard extends StatefulWidget {
  final Activity activity;

  const InteractiveActivityCard({super.key, required this.activity});


@override
State<InteractiveActivityCard> createState() => _InteractiveActivityCardState();
}


class _InteractiveActivityCardState extends State<InteractiveActivityCard>{
  bool isCompleted=false;

@override
Widget build(BuildContext context){

    return Card(
      color: isCompleted ? Colors.green.shade500 : Colors.white,
      // elevation es para simlar levantamiento en pantalla
      elevation :4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child : ListTile(
        title: Text(widget.activity.title),
        subtitle : isCompleted ? Text("Completado") : Text("Pendiente de completar"),
        trailing: IconButton(onPressed:(){
          setState(() {
            isCompleted = !isCompleted;
          }); 
        
        },
        icon: Icon(
          isCompleted ? Icons.check_circle : Icons.radio_button_unchecked,
          color: isCompleted ? Colors.green : Colors.grey,
        ),
        ),  
        leading: Icon(widget.activity.icon, color: widget.activity.iconColor),
        )
        );
}
}
