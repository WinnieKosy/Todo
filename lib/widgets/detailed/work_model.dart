import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class DetailPage extends StatefulWidget {


  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController detailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(Icons.arrow_back,color:Colors.grey),
                Icon(Icons.more_vert, color:Colors.grey,)
          ],),backgroundColor: Colors.white,
      elevation: 0,),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment:CrossAxisAlignment .start,
            children:  [
              const CircleAvatar(
                backgroundImage: NetworkImage(''),
                radius: 20,
                backgroundColor: Colors.blue,
              ),
              const SizedBox(height: 10,),
              const Text('12 Tasks'),
             const SizedBox(height: 10,),
              const Text('Work',style: TextStyle(
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
                SizedBox(width: 300,),
                Icon(Icons.timer, color: Colors.black26,)],
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
                  SizedBox(width: 300,),]
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
                  SizedBox(width: 310,),
                  Icon(Icons.timer, color: Colors.black26,)],
              ),
              const SizedBox(height: 10,),
              const Divider(
                thickness: 2,
              ),
            Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(onPressed: (){
                  showDialog(
                    context: context,
                    builder: (context)=>
                    Dialog(
                          child:Container(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('What task are you planning to perform ?'),
                                const SizedBox(height: 30,),
                                TextField(
                                  decoration: InputDecoration(hintText: 'Work'),
                                  controller: titleController,
                                ),
                                SizedBox(height: 10,),
                                TextField(
                                  decoration: InputDecoration(hintText: 'Today'),
                                  controller: detailController,
                                ),
                                SizedBox(height: 30,),
                                FlatButton.icon(
                                    icon: Icon(Icons.add),
                                    label: Text('Add Todo'),
                                    color: Colors.blue,
                                    onPressed: (){})
                              ],
                            ),
                          ) ,


                    ),
                  );
                },
                child: Icon(Icons.add),
                  backgroundColor: Colors.blue,
                ),
              ],
            )],
          ),
        ),
      ),
    );
  }
}
