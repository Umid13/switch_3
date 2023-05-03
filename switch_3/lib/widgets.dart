import 'package:flutter/material.dart';
class switch_3 extends StatefulWidget {
  const switch_3({super.key});

  @override
  State<switch_3> createState() => _switch_3State();
}

class _switch_3State extends State<switch_3> {
  String? food;
  void fn(va){
    setState(() {
      food=va;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0,25,32,25),
          child: const Text('When Do Not Disturb is turned on',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
        ),
        RadioListTile(value: 'first', groupValue: food, onChanged: fn ,
        title: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text('No Sound from notifications',style: TextStyle(fontWeight: FontWeight.w400),),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text('You will see notifications on your screen',style: TextStyle(color:Colors.grey),),
        ),
        ),
        Container(

          height: 10,
        ),
        RadioListTile(value: 'second', groupValue: food, onChanged: fn ,
        title: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text('No visuals or sound from notifications',style: TextStyle(fontWeight: FontWeight.w400),),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text('You wo\'nt see or hear notifications',style: TextStyle(color:Colors.grey),),
        ),
        ),
        Container(
          height: 1,
          color: Colors.grey,
        ),
        Container(
          height: 15,
        ),
        ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Icon(
              Icons.info_outline_rounded
            ),
          ),
          subtitle: Text(
            'When notifications arrive, your phone won\'t make a sound or vibrate.'
          ),
        )
      ],
    );
  }
}