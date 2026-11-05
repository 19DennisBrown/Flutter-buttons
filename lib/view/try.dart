
import 'package:flutter/material.dart';


class ButtonApp extends StatelessWidget{

  const ButtonApp({
    super.key,
  });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:ButtonTypes(enabled:true)
    );
  }
}

class ButtonTypes extends StatelessWidget{
  final bool enabled;

  const ButtonTypes({
    super.key,
    required this.enabled
  });


  @override
  Widget build(BuildContext context){
    
    return Padding(
      padding: .all(0),

      child: Row(
        children:<Widget>[
          SampleBtn()
        ]
      )
    );
  }
}


class SampleBtn extends StatelessWidget{
  VoidCallback ? onPressed = (){} : null;
  final onPressed
  const SampleBtn({
    super.key,
  });

  @override
  Widget build(
    return Padding(
      padding: .all(),
      child: Column(
        MainAxisAlignment: MainAxisAlignment(0)
        children: <Widget>[
          FilledButton(onPressed: onPressed, const Text('button'))
        ]
      )
    )
  )
}