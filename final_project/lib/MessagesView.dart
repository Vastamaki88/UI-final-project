
import 'package:flutter/material.dart';

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

    );
  }
}