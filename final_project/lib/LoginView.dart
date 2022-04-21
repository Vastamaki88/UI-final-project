import 'package:email_validator/email_validator.dart';
import 'package:final_project/MessagesView.dart';
import 'package:flutter/material.dart';
import 'RegisterView.dart';


class LoginView extends StatefulWidget {
  const LoginView({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<LoginView> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();
  var rememberValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Negotiator App',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      prefixIcon  : const Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (value) {
                      return null;
                    },
                    maxLines: 1,
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock),
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  CheckboxListTile(
                    title: const Text("Remember me"),
                    contentPadding: EdgeInsets.zero,
                    value: rememberValue,
                    activeColor: Theme.of(context).colorScheme.primary,
                    onChanged: (newValue) {
                      setState(() {
                        rememberValue = newValue!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
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
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  
                  const Divider(
            height: 40,
            thickness: 2,
            indent: 10,
            endIndent: 0,
            color: Colors.white,
          ),
          const Text('Don\'t have an account yet?'),
          const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const RegisterView(title: 'Register UI'),
                            ),
                          );
                        },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(300, 40),
                      textStyle: const TextStyle(fontSize: 20)                   
                    ),
                    
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
         
                    const Divider(
            height: 40,
            thickness: 2,
            indent: 10,
            endIndent: 0,
            color: Colors.white,
          ),
                    
                  
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {}
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(300, 40),
                       textStyle: const TextStyle(fontSize: 20)
                    ),
                    child: const Text(
                      'Forgot password or username?',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),            
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}