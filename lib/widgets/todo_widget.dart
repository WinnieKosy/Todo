import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'detailed/work_model.dart';


class Todo{
  String? text;
  String? title;
  double? linearProgressIndicator;
  Color? color;

  Todo({this.text, this.title, this.linearProgressIndicator, this.color});
}


class Todocard extends StatelessWidget {
  Todo todo;
  Todocard(this.todo);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
            builder: (context)=> DetailPage(todo: todo,)));
        // Navigator.push(context, MaterialPageRoute(builder: (context)=>const Login()));
      },
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
        ),
        child: Container(
          height: 400,
          decoration:BoxDecoration(
            color: Colors.white,
              borderRadius: BorderRadius.circular(10)
          ) ,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    Hero(
                      tag: todo.title!,
                      child: CircleAvatar(
                        //backgroundImage: NetworkImage(''),
                          radius: 15,
                          backgroundColor: todo.color
                      ),
                    ),
                    const Icon(Icons.more_vert,
                      color: Colors.grey,
                      size: 20,),
                  ],),
               const Spacer(),
                Text(todo.title.toString(),
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                  ),),
                const SizedBox(height: 10,),
                Text(todo.text.toString()
                  ,style: const TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,),),
                const SizedBox(height: 30,),
                LinearProgressIndicator(
                  value: todo.linearProgressIndicator,
                  backgroundColor: Colors.black26,
                  color: todo.color,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
