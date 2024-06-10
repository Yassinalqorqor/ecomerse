import 'package:ecomerse/screens/auth/views/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/widget/coustom_button_field.dart';
import '../../../core/widget/coustum_text_field.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('login Page'),

      ),
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              const SizedBox(height: 16.0),

              const SizedBox(height: 16.0),
              coustumtextfield(label: 'Email', icon: const Icon(Icons.email_outlined), controller: TextEditingController(), obscureText: false,),
              const SizedBox(height: 16.0),
               coustumtextfield(icon: const Icon(Icons.lock), controller: TextEditingController(), label: 'password', obscureText: true,),
              const SizedBox(height: 16.0),
               coustombuttonfield(icon:const Icon(Icons.person_add) , label: const Text('login'),style:ButtonStyle(

                 foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                 backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
               ),),


              const SizedBox(height: 10.0),


              TextButton.icon(
                icon: const Icon(Icons.login),
                label: const Text('sign up'),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.blue,
                ),
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const RegistrationPage()),);
                },
              ),
            ],
          ),
        ),
      ),
    );

  }


}

