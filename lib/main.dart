import 'package:flutter/material.dart';
import 'package:myfirstapp/data/notifiers.dart';
import 'package:myfirstapp/views/pages/welcome_page.dart';

import 'package:myfirstapp/widgets/navbar.dart';

void main() {
  runApp(const MyApp());
}
// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   int selectedIndex = 0; 
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(
//           seedColor: Colors.deepPurple,
//           brightness: Brightness.dark,
//         ),
//       ),
//       home:Scaffold(
//         appBar: AppBar(title:Text("flutter framework"),


//         ),
//         bottomNavigationBar: NavigationBar(destinations: [
//           NavigationDestination(icon: Icon(Icons.home), label: "Home"),
//           NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
         
//         ],
//         onDestinationSelected: (int value){
//           setState(() {
//             selectedIndex = value;
//           });
          
//         },
//         selectedIndex: selectedIndex,
//       )
//       ),
//     );
//   }
// }

String? title = "flutter framework";

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: isDarkModeNotifier, builder: (context, isDarkModeNotifier, child) {
      return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: isDarkModeNotifier ? Brightness.dark : Brightness.light,
        ),
      ),

      home: WelcomePage(),
    );
    });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return NavbarWidget();
  }
}





// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Container Showcase',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(
//           seedColor: Colors.deepPurple,
//           brightness: Brightness.dark,
//         ),
//       ),
//       home: const MyHomePage(title: 'Flutter Account'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//         leading: Icon(Icons.menu),
//       ),
//       body: Wrap(children: [
//         Text('something is important in life that is nothing as death takes you to unknown'),
//         Text('you belive your action has meaning'),
//          Text(' your life is worth living'),
//          Text(' my life, my money, my hardwork, my family mymymy'),
//          Text(' goes away in a breath'),
//       ]),
      // body: Container(
        
      //   child: Stack(
      //     children: [
           
      //       SizedBox(
      //         height: 300,child: Center(child: Text("Welcome to Flutter",style: TextStyle(
      //           color: Colors.red,
                
      //         ),),
      //         )),
      //         ListTile(
      //           leading: Icon(Icons.account_circle),
      //           tileColor: Colors.pink,
      //           title: Text("Profile"),
      //           trailing: Icon(Icons.arrow_forward),
      //           onTap: () {
      //             print("Profile Tapped");
      //           },
      //         )
      //     ],
      //   ),
      // ),
      // body: Center(
      //   child: Container(
      //     color: Colors.black,
          
      //     child: Row(
      //       mainAxisSize: MainAxisSize.min ,
           
            
      //       children: <Widget>[
      //         Container(
      //           height: 100.0,
      //           width: 100.0,
                
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(12.0),
      //             color: Colors.amber,
      //           ),
      //           child: Center(child: Text('Box 1')),
      //         ),
      //         Container(
      //           height: 100.0,
      //           width: 100.0,
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(12.0),
      //             color: Colors.amber,
      //           ),
      //           child:Center(child: Text('Box 2')),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: null, 
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }