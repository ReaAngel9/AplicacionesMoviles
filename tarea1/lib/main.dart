import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Tarea 1.5',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      //   useMaterial3: true,
      // ),
      home: MyHomePage(title: 'Mc Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const CardContainer(),
    );
  }
}

class CardContainer extends StatelessWidget {
  const CardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
        margin: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(3)),
          side: BorderSide(color: Colors.black, width: 1),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            User(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('   123 Main Street', textAlign: TextAlign.left,),
                Text('(415)555-0198   ', textAlign: TextAlign.left,),
              ]
            ),
            // IconRow(),
            IconButtonRow(title: 'Icon Row'),
          ],
        ),
    );
  }
}

class User extends StatelessWidget {
  const User({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      //Centrar el contenido de la tarjeta
      child: Padding(
              padding: EdgeInsets.only(left: 30),

        //Contenido de la tarjeta
        child: ListTile(
                leading: Icon(Icons.account_circle_sharp, size: 50, color: Colors.black),
                title: Text('Flutter McFlutter', style: TextStyle(fontSize: 23)),
                subtitle: Text('Experienced App Developer', style: TextStyle(fontSize: 15, color: Colors.black)),
              ),

      ),
    );
  }
}

class IconButtonRow extends StatefulWidget {
  const IconButtonRow({super.key, required this.title});
  final String title;

  @override
  State<IconButtonRow> createState() => _IconButtonRow();
}

class _IconButtonRow extends State<IconButtonRow> {
  bool isAccessibilityPressed = false;
  bool isTimerPressed = false;
  bool isAndroidPressed = false;
  bool isIphonePressed = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: const Icon(Icons.accessibility),
          color: isAccessibilityPressed ? Colors.indigo : Colors.black,
          onPressed: () {
            if(isAccessibilityPressed == false){
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('You pressed the accessibility icon'),
                ),
              );
            }

            setState((){
              isAccessibilityPressed = !isAccessibilityPressed;
            });
          },
          highlightColor: Colors.indigo,
        ),
        const SizedBox(width: 40),
        IconButton(
          icon: const Icon(Icons.timer),
          color: isTimerPressed ? Colors.indigo : Colors.black,
          onPressed: () {
            if(isTimerPressed == false){
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('You pressed the timer icon'),
                ),
              );
            }

            setState((){
              isTimerPressed = !isTimerPressed;
            });
          },
          highlightColor: Colors.indigo,
        ),
        const SizedBox(width: 40),
        IconButton(
          icon: const Icon(Icons.phone_android),
          color: isAndroidPressed ? Colors.indigo : Colors.black,
          onPressed: () {
            if(isAndroidPressed == false){
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('You pressed the phone android icon'),
                ),
              );
            }

            setState((){
              isAndroidPressed = !isAndroidPressed;
            });
            },
            highlightColor: Colors.indigo,
        ),
        const SizedBox(width: 40),
        IconButton(
          icon: const Icon(Icons.phone_iphone),
          color: isIphonePressed ? Colors.indigo : Colors.black,
          onPressed: () {
            if(isIphonePressed == false){
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('You pressed the phone iphone icon'),
                ),
              );
            }

            setState((){
              isIphonePressed = !isIphonePressed;
            });
          },
          highlightColor: Colors.indigo,
        ),
        const SizedBox(width: 40),
      ],
    );
  }
}