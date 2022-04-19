
import 'package:final_project/LoginView.dart';
import 'package:flutter/material.dart';
import 'LoginView.dart';

class MessagesView extends StatefulWidget {
  const MessagesView({Key? key, required this.title}) : super(key: key);
  final String title;

@override
State<MessagesView> createState() => _MessagesViewState();
}

class _MessagesViewState extends State<MessagesView> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
        appBar: buildAppBar(context),
        drawer: const Drawer(),//placeholder
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Theme.of(context).colorScheme.background,
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
        body: Column(
          children: [
            Center(
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
                    minimumSize: Size(300, 40),
                    textStyle: const TextStyle(fontSize: 20)

                ),
                child: const Text(
                  'Log in',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              ),
          ],
        ),
    );
  }
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: false,
    title: const Center(child: Text("Messages")),
    backgroundColor: Theme.of(context).colorScheme.background,
    actions: [
      IconButton( //redirect to login view
          onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>
            const LoginView(title: 'Login UI'),
          ),
        );
      },
          icon: const Icon(Icons.supervisor_account),),
    ],

  );
}