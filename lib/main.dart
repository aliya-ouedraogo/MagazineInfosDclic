import 'package:flutter/material.dart';

void main() {
  runApp(const MonAppli());
}
  
class MonAppli extends StatelessWidget {
  const MonAppli({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magazine',
      debugShowCheckedModeBanner: false,
      home: pageAccueil(),
    );
  }
} 

class pageAccueil extends StatelessWidget {
  const pageAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Magazine infos'),
        centerTitle: true,
        backgroundColor: Colors.pink,
        leading: IconButton( 
          icon: const Icon(Icons.menu), 
          onPressed: () {}, 
          ), 
        actions: [ 
          IconButton( 
            icon: const Icon(Icons.search), 
            onPressed: () {}, 
          ), 
        ]
      ),
      body: const Image(
        image: AssetImage('assets/images/magazineInfo.jpg'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Tu as clique dessus');
        },
        backgroundColor: Colors.pink,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
            ),
        child: const Text('click', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}