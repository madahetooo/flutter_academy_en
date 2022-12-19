import 'package:flutter/material.dart';
import 'package:flutter_academy_en/basic_widget_apps/bottom_navigation_bar_widget.dart';
import 'package:flutter_academy_en/bmi_calculator/bmi_calculator.dart';
import 'package:flutter_academy_en/chat_app/ui/chats_screen.dart';
import 'package:flutter_academy_en/todolist_app/todolist_app.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      drawer: Drawer(
        child: Column(
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text(
                "Eslam Medhat",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text("ieslammedhat@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://user-images.githubusercontent.com/28203059/159008453-1fb9a75a-7503-41ae-9fe2-b70d8bdccc57.png'),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://yt3.ggpht.com/Bpm_Jw9cZ3rvQet283n3VJEDLkOjJpQaTBvu-ya2HcAdPpozwFX47ogPw1L9wT-Seq_fQK5m=s900-c-k-c0x00ffffff-no-rj'),
                )
              ],
            ),
            ListTile(
              title: Text('Sent'),
              leading: Icon(Icons.send),
            ),
            ListTile(
              title: Text('Inbox'),
              leading: Icon(Icons.inbox),
            ),
            ListTile(
              title: Text('Archive'),
              leading: Icon(Icons.archive),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text('Starred'),
              leading: Icon(Icons.star),
            ),
            ListTile(
              title: Text('Updates'),
              leading: Icon(Icons.update),
            ),
            ListTile(
              title: Text('Community'),
              leading: Icon(Icons.people),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text('Log out'),
              leading: Icon(Icons.logout),
            ),
          ],
        ),
      ),
      body: Center(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BottomNavigationBarWidget()));
                },
                child: Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 4),
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.green,
                          offset: Offset(6.0, 6.0),
                        )
                      ]),
                  child: const Center(
                    child: Text(
                      'Basic Widget App',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BMICalculator()));
                },
                child: Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 4),
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.green,
                          offset: Offset(6.0, 6.0),
                        )
                      ]),
                  child: const Center(
                    child: Text(
                      'BMI Calculator App',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TodoListApp()));
                },
                child: Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 4),
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.green,
                          offset: Offset(6.0, 6.0),
                        )
                      ]),
                  child: const Center(
                    child: Text(
                      'Todolist App',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context, rootNavigator: true)
                      .pushNamed('/loading_screen');
                },
                child: Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 4),
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.green,
                          offset: Offset(6.0, 6.0),
                        )
                      ]),
                  child: const Center(
                    child: Text(
                      'World Timer App',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ChatsScreen()));
                },
                child: Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 4),
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.green,
                          offset: Offset(6.0, 6.0),
                        )
                      ]),
                  child: const Center(
                    child: Text(
                      'Chat App',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 4),
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.green,
                        offset: Offset(6.0, 6.0),
                      )
                    ]),
                child: const Center(
                  child: Text(
                    'Reverse String App',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
