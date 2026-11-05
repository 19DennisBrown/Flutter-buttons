import 'package:flutter/material.dart';



class ButtonApp extends StatelessWidget {
  const ButtonApp({
    super.key,
  });

  @override
  Widget  build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: const Color(0xff6750a4)),
      title: 'Button Types',
      home: const Scaffold(
        body:ButtonTypesExample()
      )
    );
  }

}

class ButtonTypesExample extends StatelessWidget {

  const ButtonTypesExample({
    super.key,
  });


  @override
  Widget build(BuildContext context){
    return const Padding(
      padding: .all(0),
      child: Row(
        children: <Widget>[
          Spacer(),
          ButtonTypesGroup(enabled: true),
          ButtonTypesGroup(enabled: false),
          Spacer(),
        ],
      ),
    );
  }
}

class ButtonTypesGroup extends StatelessWidget{

  final bool enabled;

  const ButtonTypesGroup({
    super.key,
    required this.enabled,
  });

  @override 
  Widget build(BuildContext context){
    VoidCallback? onPressed = enabled ? (){} : null;
    return Padding(
      padding: const .all(0),

      child: Column(
        mainAxisAlignment: .spaceEvenly,
        children: <Widget>[
          ElevatedButton(
            onPressed: onPressed, 
            child: const Text('Elevated Button'),
          ),
          FilledButton(
            onPressed: onPressed,
            child: const Text('Filled'),
          ),
          FilledButton.tonal(
            onPressed: onPressed,
            child: const Text('Filled Tonal'),
          ),
          OutlinedButton(
            onPressed: onPressed,
            child: const Text('outlined'),
          ),
          TextButton(
            onPressed: onPressed,
            child: const Text('Text')
          )
        ]
      )
    );
  }


}