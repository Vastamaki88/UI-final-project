
import 'package:final_project/ExampleCase.dart';
import 'package:final_project/LoginView.dart';
import 'package:flutter/material.dart';
import 'MessagesView.dart';
import 'LoginView.dart';


class ClosedCases extends StatefulWidget {
  const ClosedCases({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<ClosedCases> createState() => _ClosedCasesState();
}

class _ClosedCasesState extends State<ClosedCases> {

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
          padding: EdgeInsets.fromLTRB(64,0,64,0),
          child: Text("Closed Cases"),
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
                  children: <Widget>[const Icon(
                    Icons.mark_email_read,
                    color: Colors.grey,
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
                  children: <Widget>[const Icon(
                    Icons.mail,
                    color: Colors.grey,
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
                    color: Colors.grey,
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
                  children: <Widget>[const Icon(
                    Icons.mail,
                    color: Colors.grey,
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