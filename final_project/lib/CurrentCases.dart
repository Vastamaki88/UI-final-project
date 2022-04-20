
import 'package:final_project/ExampleCase.dart';
import 'package:final_project/LoginView.dart';
import 'package:flutter/material.dart';
import 'MessagesView.dart';
import 'LoginView.dart';


class CurrentCases extends StatefulWidget {
  const CurrentCases({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<CurrentCases> createState() => _CurrentCasesState();
}

class _CurrentCasesState extends State<CurrentCases> {

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
          child: Text("Currently open cases"),
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
                    Icons.mark_email_read,
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
                          'First Case',
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
                    Icons.mail,
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
                          'Second Case',
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
                    Icons.mail,
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
                          'Third Case',
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
                    Icons.mail,
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
                          'Fourth Case',
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
          ],
        )
    );
  }
}