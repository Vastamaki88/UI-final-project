
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'LoginView.dart';


class RegisterView extends StatefulWidget {
  const RegisterView({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<RegisterView> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterView> {
  final _formKey = GlobalKey<FormState>();
  var rememberValue = false;

  @override
  Widget build(BuildContext context) {
    Character? _character = Character.Employee;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Register',
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
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
        
                          maxLines: 1,
                          decoration: InputDecoration(
                            hintText: 'First name',
                            prefixIcon: const Icon(Icons.person),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextFormField(
          
                          maxLines: 1,
                          decoration: InputDecoration(
                            hintText: 'Last name',
                            prefixIcon: const Icon(Icons.person),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(

                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      prefixIcon: const Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
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
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    maxLines: 1,
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.business),
                      hintText: 'Enter your company name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
     
        ListTile(
          title: const Text('Employee'),
          leading: Radio<Character>(
            value: Character.Employee,
            groupValue: _character,
            onChanged: (Character? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Employer'),
          leading: Radio<Character>(
            value: Character.Employer,
            groupValue: _character,
            onChanged: (Character? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Mediator'),
          leading: Radio<Character>(
            value: Character.Mediator,
            groupValue: _character,
            onChanged: (Character? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
    
                  ElevatedButton(          
                      onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const LoginView(title: 'Login UI'),
                            ),
                          );
                        },              
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                    ),
                    child: const Text(
                      'Create account',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already registered?'),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const LoginView(title: 'Login UI'),
                            ),
                          );
                        },
                        child: const Text('Sign in'),
                      ),
                    ],
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
enum Character { Employee, Employer, Mediator }


      

