import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
   DetailPage({Key? key, required this.count}):super(key: key);
    int count;

  @override
  State<DetailPage> createState() => _Detail1PageState();
}

class _Detail1PageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail-1 Page ${widget.count}'),
      centerTitle: true,
      leading: IconButton(onPressed: (){Navigator.pop(context, widget.count);}, 
      icon: const Icon(Icons.arrow_back)),),
      body: Center(child:  Text(
              '${widget.count}',
              style: const TextStyle(fontSize: 50, color: Colors.blue),
            ),),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(onPressed: (){setState(() {
            widget.count--;
          });},
          child: const Icon(Icons.remove),),
          const SizedBox(width: 50),
          FloatingActionButton(onPressed: (){setState(() {
            widget.count++;
          });},
          child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}