

import 'package:flutter/material.dart';


class ButtonApp extends StatelessWidget {

  const ButtonApp({
    super.key,
  });


  @override
  Widget build(BuildContext context){
    return  Scaffold(

      body: ButtonStyles()
    );
  }
}

class ButtonStyles extends StatelessWidget{

  const ButtonStyles({
    super.key,
  });

  @override
  Widget build(BuildContext context){
     return Padding(
      padding: .all(0),

      child: Row(
        children: <Widget>[
          ButtonGroup(enabled: true),
        ]
      ),
     );
  }
}


class ButtonGroup extends StatelessWidget{

  final bool enabled;
  const ButtonGroup({
    super.key,
    required this.enabled,
  });

  @override
  Widget build(BuildContext context){
    VoidCallback? onPressed = enabled ? (){} : null;
    return Padding(
      padding: .all(0),

      child: Column(
        mainAxisAlignment: .spaceEvenly,
        
        children: <Widget>[
          ElevatedButton(
            onPressed: onPressed,
            child: Text('Button'),
          )
        ]
      )
    );
  }
}