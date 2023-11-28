import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// The details screen
class GalleryPage extends StatelessWidget {
  /// Constructs a [GalleryPage]
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold( appBar: AppBar(title: Text( "Gallery Page"), actions: [InkWell(child: Padding(
     padding: const EdgeInsets.symmetric(horizontal:12.0),
     child: Icon( Icons.info),
   ), onTap: () => context.go('/gallery'),),],),
      body: Container( height: double.infinity, width:  double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/one6.jpg"), opacity: .3,
            fit: BoxFit.cover,
          ),
        ),
  child: Stack( fit: StackFit.loose,
    children: [
      Center(
        child: Column( mainAxisAlignment:  MainAxisAlignment.center,
          children: [
            //todo : photos to be displayed here  using gridview
            GridView.count(
  primary: false,
  padding: const EdgeInsets.all(20),
  crossAxisSpacing: 10,
  shrinkWrap: true,
  mainAxisSpacing: 10,
  crossAxisCount: 2,
  children: <Widget>[
    Container(
      padding: const EdgeInsets.all(8),
      color: Colors.teal[100],
      child:  Image.asset("assets/one1.jpg", fit: BoxFit.fitWidth,),
    ),
    Container(
      padding: const EdgeInsets.all(8),
      color: Colors.teal[200],
      child:  Image.asset("assets/one2.jpg", fit: BoxFit.fitWidth,),
    ),
    Container(
      padding: const EdgeInsets.all(8),
      color: Colors.teal[300],
      child:  Image.asset("assets/one3.jpg", fit: BoxFit.fitWidth,),
    ),
    Container(
      padding: const EdgeInsets.all(8),
      color: Colors.teal[400],
      child:  Image.asset("assets/one4.jpg", fit: BoxFit.fitWidth,),
    ),
    Container(
      padding: const EdgeInsets.all(8),
      color: Colors.teal[500],
      child:  Image.asset("assets/one5.jpg", fit: BoxFit.fitWidth,),
    ),
    Container(
      padding: const EdgeInsets.all(8),
      color: Colors.teal[600],
      child:  Image.asset("assets/one6.jpg", fit: BoxFit.fitWidth,),
    ),
  ],
),
            ElevatedButton(
                      onPressed: () => context.go('/'),
                      child: const Text('Go to the Home screen'),
                    ),
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