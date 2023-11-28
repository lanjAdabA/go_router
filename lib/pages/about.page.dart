import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// The details screen
class AboutScreen extends StatelessWidget {
  /// Constructs a [AboutScreen]
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: Text( "About Page"), actions: [InkWell(child: Padding(
     padding: const EdgeInsets.symmetric(horizontal:12.0),
     child: Icon( Icons.info),
   ), onTap: () => context.go('/about'),),],),
      body: Container( height: double.infinity, width:  double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/one1.jpg"), opacity: .3,
            fit: BoxFit.cover,
          ),
        ),
  child: Stack( fit: StackFit.loose,
    children: [
      Center(
        child: Column( mainAxisAlignment:  MainAxisAlignment.center,
          children: [ Icon(Icons.info_outline, size: 80,),
            ElevatedButton(
                      onPressed: () => context.go('/'),
                      child: const Text('Back to Home screen'),
                    ),
                     SizedBox(height: 12,),
                     Text("This is the About Page, Informations about the application is usually shown here.", style:  TextStyle( fontSize: 16),),
                     SizedBox(height: 70,),
          ],
        ),
      ),
    ],
  ),      ),
    );




    // return Scaffold(
    //   appBar: AppBar(title: const Text('Details Screen')),
    //   body: Container( color:  Colors.blue[100],
    //     child: Center(
    //       child: ElevatedButton(
    //         onPressed: () => context.go('/'),
    //         child: const Text('Go back to the Home screen'),
    //       ),
    //     ),
    //   ),
    // );
  }
}