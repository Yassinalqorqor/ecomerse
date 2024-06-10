import 'package:flutter/material.dart';

import '../../../core/widget/coustom_button_field.dart';
import '../../../core/widget/coustum_text_field.dart';
import '../../../core/widget/coustum_textbutton_field.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration Page'),

      ),
      body:Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                const SizedBox(height: 16.0),
                coustumtextfield(icon:  const Icon(Icons.person), controller: TextEditingController(), label: 'name', obscureText: false,),
                const SizedBox(height: 16.0),
                coustumtextfield(label: 'Email', icon: const Icon(Icons.email_outlined), controller: TextEditingController(), obscureText: false,),

                const SizedBox(height: 16.0),
                coustumtextfield(icon: const Icon(Icons.lock), controller: TextEditingController(), label: 'password', obscureText: true,),
                const SizedBox(height: 16.0),
                coustombuttonfield(icon:const Icon(Icons.person_add) , label:  const Text('Register'),style:ButtonStyle(

                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                ),),
                const SizedBox(height: 10.0),

               /* coustumtextbuttonfield(
                  label: Text('Log In'),
                  icon: Icon(Icons.login),
                  onPressed: () {
                    Navigator.pop(context); // Navigate back or perform any other action
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.blue,
                    // Add other customizations as needed
                  ),*/


                TextButton.icon(
                  icon: const Icon(Icons.login),
                  label: const Text('Log In'),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.blue,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),

                ],
            ),
          ),
        ),
     );

  }


  }
