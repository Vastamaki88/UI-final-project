
import 'package:final_project/LoginView.dart';
import 'package:final_project/OpenNewCase.dart';
import 'package:flutter/material.dart';
import 'LoginView.dart';

class MessagesView extends StatefulWidget {
  const MessagesView({Key? key, required this.title}) : super(key: key);
  final String title;

@override
State<MessagesView> createState() => _MessagesViewState();
}

class _MessagesViewState extends State<MessagesView> {
  double pL = 48;
  double pT = 32;
  double pR = 48;
  double pB = 0;

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
            const SizedBox(
              height: 10,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  //if (_formKey.currentState!.validate()) {}
                  //go to next view, not sure if validator needed
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                      const OpenNewCase(title: 'New Case UI'),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(300, 50),
                    textStyle: const TextStyle(fontSize: 20)

                ),
                child: const Text(
                  'Open new case',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              ),
            Padding(
              padding: EdgeInsets.fromLTRB(pL,pT,pR,pB),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    minimumSize: Size(300, 64),
                    textStyle: const TextStyle(fontSize: 20)

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[Icon(
                    Icons.chat_bubble,
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
                        'Open cases',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        'Review current cases',
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
              padding: EdgeInsets.fromLTRB(pL,pT,pR,pB),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    minimumSize: Size(300, 64),
                    textStyle: const TextStyle(fontSize: 20)

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const Icon(
                      Icons.message,
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
                          'Closed cases',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          'Review past cases',
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
              padding: EdgeInsets.fromLTRB(pL,pT,pR,pB),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    minimumSize: Size(300, 64),
                    textStyle: const TextStyle(fontSize: 20)

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.forum,
                      color: Theme.of(context).colorScheme.primary,
                      size: 24.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: const [
                          Text(
                            'Forum',
                            style: TextStyle(

                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 22,
                            ),
                          ),
                          Text(
                            'Open discussion for users',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w200,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(pL,pT,pR,pB),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    minimumSize: Size(300, 64),
                    textStyle: const TextStyle(fontSize: 20)

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.label_important,
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
                          'Direct Messages',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
    );
  }
}

AppBar buildAppBar(BuildContext context) {
  String appBarTitle = "Organization Ltd";
  return AppBar(
    automaticallyImplyLeading: false,
    centerTitle: true,
    title: Text(appBarTitle),
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