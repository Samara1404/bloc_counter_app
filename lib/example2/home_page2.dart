
import 'package:bloc_counter_app/example2/detail2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage2 extends StatelessWidget {
  const MyHomePage2({super.key, });


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
     
        backgroundColor: Colors.blue[400],
       
        title: Text("Bloc Counter App", 
       style: TextStyle(color: Colors.white70, fontSize: 26, fontWeight: FontWeight.w600), ),
      ),
      body: Center(
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder <CounterCubit, int>(builder: (context, State) {
              return Text("$State",  
               style: Theme.of(context).textTheme.headlineMedium,
            );
            }),
           ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext contex) => Detail2Page()));
            }, 
            child: Text('o detail bloc'))
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () => context.read <CounterCubit>().decrement(),
            tooltip: 'Increment',
            child: const Icon(Icons.remove),
          ),
          SizedBox(width: 50),
          FloatingActionButton(
            onPressed: () => context.read <CounterCubit>().increment(),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ), 
    );
  }
}
 class CounterCubit extends Cubit<int> {
  CounterCubit () :super (0);
  increment () => emit (state +1);
  decrement () => emit (state -1);
 }
