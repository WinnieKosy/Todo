import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/animation_todo.dart';
import '../widgets/todo_widget.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Todo>todo = [
    Todo(text: '9 Tasks', title:'Personal', color: Colors.orange,linearProgressIndicator: 0.8 ),
    Todo(text: '12 Tasks', title:'Work', color: Colors.blue,linearProgressIndicator: 0.2 ),
    Todo(text: '7 Tasks', title:'Home', color: Colors.purple,linearProgressIndicator: 0.5 ),

  ];
  final pageController = PageController(viewportFraction:0.6);
  Color color = Colors.orange;
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              color,
              color.withOpacity(0.4),
            ])
          ),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const  SizedBox(height: 15,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(Icons.sort,color: Colors.white,),
                          Text('TODO',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Icon(Icons.search, color: Colors.white,),
                        ],),
                      const  SizedBox(height: 50,),
                      const  CircleAvatar(
                        backgroundImage: NetworkImage('https://images.unsplash.com/photo-1616428362406-4ffd9fcbf023?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
                        radius: 25,
                        backgroundColor: Colors.white,
                      ),
                      const    SizedBox(height: 20,),
                      const  Text('Hello, Jane.', style: TextStyle(
                          fontSize: 30,
                          color: Colors.white
                      ),),
                      const  SizedBox(height: 10,),
                      const Text('Looks like feel good.',style: TextStyle(
                          color: Colors.white70
                      ),),
                      const Text('You have 3 tasks to do today.',style: TextStyle(
                         color: Colors.white70
                      ),),
                      const SizedBox(height: 40,),
                      const Text('TODAY : SEPTEMBER 12, 2017', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 10
                      ),),
                      const  SizedBox(height: 10,),
                    ],
                  ),
                ),

                SizedBox(
                  height:400,
                  child: PageView.builder(
                    controller: PageController(viewportFraction:0.7),
                    onPageChanged: (index){
                      setState(() {
                        color = todo[index].color!;
                      });
                    },
                    itemCount: todo.length,
                    itemBuilder: (context,index){
                      Todo todoitem = todo[index];
                      return TodoWidget(todoitem);
                    },
                  ),
                ),

                const SizedBox(height: 10,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
