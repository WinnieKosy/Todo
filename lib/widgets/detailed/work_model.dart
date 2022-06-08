import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../todo_widget.dart';
class DetailPage extends StatefulWidget {

Todo todo;
   DetailPage({required this.todo});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController detailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child:const Icon(Icons.add),
      ),
      appBar: AppBar(
        iconTheme:const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        actions:const [
          SizedBox(width: 20,),
          Icon(Icons.more_vert, color:Colors.grey,)
        ],
      elevation: 0,),
      body: Container(
        padding: const EdgeInsets.only(left: 30,right: 30,top: 20),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment:CrossAxisAlignment .start,
            children:  [
              Hero(
                tag: widget.todo.title!,
                child: CircleAvatar(
                 // backgroundImage: NetworkImage(''),
                  radius: 20,
                  backgroundColor:widget.todo.color,
                ),
              ),
              const SizedBox(height: 10,),
              const Text('12 Tasks'),
             const SizedBox(height: 10,),
              Text(widget.todo.title!,style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),),
              const SizedBox(height: 20,),
              const LinearProgressIndicator(
                value: 0.4,
                color: Colors.blue,
                backgroundColor: Colors.black26,
              ),
              const SizedBox(height: 20,),
              const Text('Today'),
              const SizedBox(height: 10,),

             Row(
               children:const [
                  Icon(Icons.check_box_outline_blank_sharp,color: Colors.grey,),
                  SizedBox(width: 10,),
                  Text('Design Sprint')],
             ),
              const SizedBox(height: 10,),
              const Divider(
                thickness: 2,
              ),
              Row(
                children: const[
                  Icon(Icons.check_box_outline_blank_sharp,color: Colors.grey,),
                  SizedBox(width: 10,),
                  Text('Icon Set Design for Mobile App')],
              ),
              const SizedBox(height: 10,),
              const Divider(
                thickness: 2,
              ),
              Row(
                children:const [
                  Icon(Icons.check_box_outline_blank_sharp,color: Colors.grey,),
                  SizedBox(width: 10,),
                  Text('HTML/CSS Study'),
                  Spacer(),
                 Icon(Icons.timer, color: Colors.black26,)
                ],
              ),
              const SizedBox(height: 10,),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Tomorrow'),
              const SizedBox(height: 10,),
              Row(
                children:const [
                  Icon(Icons.check_box_outline_blank_sharp,color: Colors.grey,),
                  SizedBox(width: 10,),
                  Text('Weekly Report'),
                  Spacer(),]
              ),
              const SizedBox(height: 10,),
              const Divider(
                thickness: 2,
              ),

              Row(
                children:const [
                  Icon(Icons.check_box_outline_blank_sharp,color: Colors.grey,),
                  SizedBox(width: 10,),
                  Text('Design Meeting'),
                  Spacer(),
                  Icon(Icons.timer, color: Colors.black26,)],
              ),
              const SizedBox(height: 10,),
              const Divider(
                thickness: 2,
              ),
           ],
          ),
        ),
      ),
    );
  }
}
