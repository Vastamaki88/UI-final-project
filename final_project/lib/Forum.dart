
import 'package:final_project/ExampleCase.dart';
import 'package:final_project/LoginView.dart';
import 'package:flutter/material.dart';
import 'MessagesView.dart';
import 'LoginView.dart';


class Forum extends StatefulWidget {
  const Forum({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Forum> createState() => _ForumState();
}

class _ForumState extends State<Forum> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Theme.of(context).colorScheme.background,
            currentIndex: 2,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.radio_button_unchecked),
                label: 'Label',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.change_history),
                label: 'Label',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.crop_square),
                label: 'Label',
              ),
            ]
        ),
        appBar: AppBar(title: const Padding(
          padding: EdgeInsets.fromLTRB(32,0,32,0),
          child: Text("Discussion Forum"),
        ),
        ),
        body:
        //beginning of case cards UI
        Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20,20,20,0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                      const ExampleCase(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    minimumSize: Size(300, 64),
                    textStyle: const TextStyle(fontSize: 20)

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[Icon(
                    Icons.forum_outlined,
                    color: Theme.of(context).colorScheme.primary,
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                    const SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: const [
                        Text(
                          'First Discussion',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          'Example Company Ltd',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w200,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20,20,20,0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                      const ExampleCase(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    minimumSize: Size(300, 64),
                    textStyle: const TextStyle(fontSize: 20)

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[Icon(
                    Icons.forum_outlined,
                    color: Theme.of(context).colorScheme.primary,
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                    const SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: const [
                        Text(
                          'Second Discussion',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          'Example Company Ltd',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w200,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20,20,20,0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                      const ExampleCase(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    minimumSize: Size(300, 64),
                    textStyle: const TextStyle(fontSize: 20)

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[Icon(
                    Icons.forum_outlined,
                    color: Theme.of(context).colorScheme.primary,
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                    const SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: const [
                        Text(
                          'Third Discussion',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          'Example Company Ltd',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w200,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20,20,20,0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                      const ExampleCase(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    minimumSize: Size(300, 64),
                    textStyle: const TextStyle(fontSize: 20)

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[Icon(
                    Icons.forum_outlined,
                    color: Theme.of(context).colorScheme.primary,
                    size: 24.0,
                    semanticLabel: '',
                  ),
                    const SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: const [
                        Text(
                          'Fourth Discussion',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          'Example Company Ltd',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w200,
                            fontSize: 14,
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20,20,20,0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                      const ExampleCase(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    minimumSize: Size(300, 64),
                    textStyle: const TextStyle(fontSize: 20)

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[Icon(
                    Icons.forum_outlined,
                    color: Theme.of(context).colorScheme.primary,
                    size: 24.0,
                    semanticLabel: '',
                  ),
                    const SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: const [
                        Text(
                          'Fifth Discussion',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          'Example Company Ltd',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w200,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20,20,20,0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                      const ExampleCase(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    minimumSize: Size(300, 64),
                    textStyle: const TextStyle(fontSize: 20)

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[Icon(
                    Icons.forum_outlined,
                    color: Theme.of(context).colorScheme.primary,
                    size: 24.0,
                    semanticLabel: '',
                  ),
                    const SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: const [
                        Text(
                          'Sixth Discussion',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          'Example Company Ltd ඞ',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w200,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
    );
  }
}