import 'package:flutter/material.dart';

class  home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(20),
        child: AppBar(title: Text('My Notes',style: TextStyle(color: Colors.brown,fontSize: 18,fontWeight:FontWeight.bold)),backgroundColor: Colors.yellow.shade200,)
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Form(
                  key: _formKey,
                    child: Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(15.0),
                         child: Image.network(
                             'https://play-lh.googleusercontent.com/vSNQds6F5roxdN4-a16JnQ9dWQVSZZ8OH4-iMAcNLaFQd3ItZWU8rOPOql4Ew5Hh1esX',height: 100,width: 100,
                         ),
                       ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: InputDecoration(label: Text('Username')),
                            validator: (value){
                              if(value==null||value.isEmpty||value.contains('0')){
                                return 'Please enter valid username';
                              }
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                           decoration: InputDecoration(label: Text('Password')),obscureText: true,
                            validator: (value){
                              if(value==null||value.isEmpty||value.contains('0')){
                                return 'Please enter valid password';
                              }
                            },
                          ),
                        )
                     ],
                    )
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ElevatedButton(onPressed: () {
                    if(_formKey.currentState!.validate()){
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing'))
                      );
                    };
                  }, child: const Text('Submit'),
                    style: ElevatedButton.styleFrom(primary: Colors.yellow.shade100,onPrimary: Colors.brown),),
                ),
              ],
                  ),
          ),
        )
      ),
    );
  }
}
