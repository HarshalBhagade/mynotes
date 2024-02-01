import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mynotes/data/dummy_data.dart';
class notes extends StatelessWidget {
  const notes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.purple.shade300,
        title: const Text('Notes',style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            itemCount: notesData.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(5.0),
                child: ListTile(
                  tileColor: Colors.purple[100],
                  title: Text(notesData[index]['title']!),
                  subtitle: Text(notesData[index]['content']!),
                )),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,)),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple.shade300,
        onPressed: (){},
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
