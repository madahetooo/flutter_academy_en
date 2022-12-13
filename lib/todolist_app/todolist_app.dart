import 'package:flutter/material.dart';
import 'package:flutter_academy_en/todolist_app/database_helper.dart';

class TodoListApp extends StatefulWidget {
  const TodoListApp({Key? key}) : super(key: key);

  @override
  State<TodoListApp> createState() => _TodoListAppState();
}

class _TodoListAppState extends State<TodoListApp> {
  final dbHelper = DatabaseHelper.instance;
  var todoController = TextEditingController();
  String todoEdited = "";
  bool validated = true;
  String errorMessage = "";
  var myTodos = [];
  List<Widget> children = [];

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(builder: (context,snap){
      if(snap.hasData == null){
        return Center(
          child: Text("No Data Available"),
        );
      }else{
        if(myTodos.length == 0){
          return Scaffold(
            appBar: AppBar(
              title: const Text("Todolist App"),
              centerTitle: true,
            ),
            body: const Center(
              child: Text("No Tasks Available"),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: displayAlertDialog,
              child: const Icon(Icons.add),
              backgroundColor: Colors.purple,
            ),
          );
        }else{
          return Scaffold(
            appBar: AppBar(
              title: const Text("Todolist App"),
              centerTitle: true,
            ),
            body: Column(
              children: children,
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: displayAlertDialog,
              child: const Icon(Icons.add),
              backgroundColor: Colors.purple,
            ),
          );
        }
      }
    },future:  queryAllTodosInTable(),);
  }

  void displayAlertDialog() {
    todoController.text = "";
    showDialog(
        context: context,
        builder: (context) {
          return StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
              title: const Text("Add a Task"),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: todoController,
                    autofocus: true,
                    onChanged: (value) {
                      todoEdited = value;
                    },
                    decoration: InputDecoration(
                        errorText: validated ? null : errorMessage),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  MaterialButton(
                    color: Colors.purple,
                    child: const Text(
                      "Add",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                    onPressed: () {
                      if (todoController.text.isEmpty) {
                        setState(() {
                          errorMessage = "Cannot be empty";
                          validated = false;
                        });
                      } else if (todoController.text.length > 500) {
                        setState(() {
                          errorMessage = "Too Many Characters";
                          validated = false;
                        });
                      } else {
                        addTodo();
                      }
                    },
                  ),
                ],
              ),
            );
          });
        });
  }

  void addTodo() async {
    Map<String, dynamic> todo = {DatabaseHelper.columnName: todoEdited};
    final id = await dbHelper.insertTodo(todo);
    print(id);
    Navigator.of(context, rootNavigator: true).pop();
    todoEdited = "";
    setState(() {
      validated = true;
      errorMessage = "";
    });
  }

  Future<bool> queryAllTodosInTable() async{
    myTodos = [];
    children = [];
   var allTodos =  await dbHelper.queryAllTodos();
   allTodos?.forEach((todo) {
     myTodos.add(todo.toString());
     children.add(Card(
       elevation: 5.0,
       margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
       child: ListTile(
         title:  Text(todo['todo']),
         onLongPress: () {
           dbHelper.delete(todo['_id']);
           setState(() {
           });
         },
       ),
     ),
     );
   });
    return Future.value(true);
  }
}
// return Scaffold(
// appBar: AppBar(
// title: const Text("Todolist App"),
// centerTitle: true,
// ),
// body: Column(
// children: children,
// ),
// floatingActionButton: FloatingActionButton(
// onPressed: displayAlertDialog,
// child: const Icon(Icons.add),
// backgroundColor: Colors.purple,
// ),
// );