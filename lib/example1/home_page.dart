import 'package:bloc_counter_app/example1/detail_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

 

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
    
      _counter++;
    });
  }
    void _decrementCounter() {
    setState(() {
    
      _counter--;
    });
  }


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 119, 129, 225),
      
      appBar: AppBar(
        centerTitle: true,
     
        backgroundColor: Colors.blue[200],
       
        title: Text('Bloc Counter App',style: TextStyle(color: Color.fromARGB(255, 243, 234, 234),fontSize: 26, fontWeight: FontWeight.w600),),
      ),

      body: Center(
        
        
        child: Column(
        
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(onPressed: () async {
              final data = await Navigator.push (context, MaterialPageRoute(
                builder: (BuildContext context)=> DetailPage(count: _counter)));
              setState(() {
                _counter = data ?? 0;
              });
            }
            ,
             child: const Text('Go detail'))
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 50),
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ), 
    );
  }
}
