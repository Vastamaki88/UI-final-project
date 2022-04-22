
import 'package:final_project/CurrentCases.dart';
import 'package:final_project/MessagesView.dart';
import 'package:flutter/material.dart';
import 'CurrentCases.dart';

class DM extends StatelessWidget {
  const DM({Key? key}) : super(key: key);


  // This is a template Case that opens from any click on a case.

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
          child: Text("Direct Message"),
        ),
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(32, 32, 32, 0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Title",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    )
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(32.0),
              child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor elit.",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                    fontSize: 20,
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32,0,32,32),
              child: TextFormField(
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: 'Reply',
                  prefixIcon  : const Icon(Icons.message_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) =>
                const MessagesView(title: 'Messages UI')
                    ),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(200, 50),
                textStyle: const TextStyle(fontSize: 20),
                primary: Theme.of(context).colorScheme.primary,

              ),
              child: const Text(
                'Send reply',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
    );
  }
}