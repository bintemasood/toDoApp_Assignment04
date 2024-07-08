import 'package:assignment04/utils/todo_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class HomePage extends StatefulWidget {
    HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
final _controller = TextEditingController();
List toDoList=[
['Learn Flutter',false],
['Zainab homework',false],
];

void checkBoxChanged(int index){
setState(() {
  toDoList[index][1]=! toDoList[index][1];
});
}

void saveNewTask(){
  setState(() {
    toDoList.add([_controller.text,false]);
    _controller.clear();
  });
}

void deleteTask(int index){
  setState(() {
    toDoList.removeAt(index);
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade300,
      appBar: AppBar(
        title: const Center(
          child: const Text(
            "Simple Todo",
          ),
        ),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        actions: [CircleAvatar(
          backgroundColor: Colors.deepPurple.shade200,
        child: Text("Humaira", 
        style: TextStyle(fontSize: 10),
        ),
        ),
        ],
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder:(BuildContext, index){
          return TodoList(
            taskName: toDoList [index][0],
            taskCompleted: toDoList[index][1],
            onChnaged: (value)=> checkBoxChanged(index),
            deleteFunction: (contex) => deleteTask (index),
        );
      },
     ),
     floatingActionButton: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 20),
       child: Row(
         children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
        child: TextField(
          controller: _controller,
        decoration: InputDecoration(
       hintText: "Add a new todo item",
       filled: true,
       fillColor: Colors.deepPurple.shade200,
       
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.deepPurple,
            ),
          borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.deepPurple,
            ),
          borderRadius: BorderRadius.circular(15),
          ),
        ),      
              ),
          ),
            ),
        FloatingActionButton(
            onPressed: saveNewTask,
            child: const Icon(Icons.add),
            ),
         ],
       ),
     ),
    );
  }
}