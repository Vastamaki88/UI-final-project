
import 'package:final_project/LoginView.dart';
import 'package:flutter/material.dart';
import 'MessagesView.dart';
import 'LoginView.dart';


class OpenNewCase extends StatefulWidget {
  const OpenNewCase({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<OpenNewCase> createState() => _OpenNewCaseState();
}

class _OpenNewCaseState extends State<OpenNewCase> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Theme.of(context).colorScheme.background,
            currentIndex: 1,
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
        appBar: AppBar(title: Center(child: const Text("Open a new case")),),
      body:
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 32, 8, 8),
              child: TextFormField(
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: 'Enter a title for the new case',
                  prefixIcon  : const Icon(Icons.title),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
              child: TextFormField(
                maxLines: 6,
                decoration: InputDecoration(
                  hintText: 'Enter a Description for the case',
                  prefixIcon  : const Icon(Icons.description),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
              child: TextFormField(
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: 'Work group details',
                  prefixIcon  : const Icon(Icons.supervisor_account),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 64, 20, 0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        //if (_formKey.currentState!.validate()) {}
                        //go to next view, not sure if validator needed
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                            const MessagesView(title: 'Messaging UI'),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(100, 50),
                          textStyle: const TextStyle(fontSize: 20),
                        primary: Theme.of(context).colorScheme.primary,

                      ),
                      child: const Text(
                        'temp',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        //if (_formKey.currentState!.validate()) {}
                        //go to next view, not sure if validator needed
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                            const MessagesView(title: 'Messaging UI'),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(100, 50),
                        textStyle: const TextStyle(fontSize: 20),
                        primary: Theme.of(context).colorScheme.primary,

                      ),
                      child: const Text(
                        'temp',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        //if (_formKey.currentState!.validate()) {}
                        //go to next view, not sure if validator needed
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                            const MessagesView(title: 'Messaging UI'),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(100, 50),
                        textStyle: const TextStyle(fontSize: 20),
                        primary: Theme.of(context).colorScheme.primary,

                      ),
                      child: const Text(
                        'temp',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        )
    );
  }
}