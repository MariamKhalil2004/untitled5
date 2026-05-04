import 'package:flutter/material.dart';
import 'package:untitled5/views/homepage/view.dart';

import '../../core/ui/appbar.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginView();
}

class _LoginView extends State<LoginView> {
  bool ishidden=true;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Profile",),

      body:Form(
        key: formKey,
        onChanged: (){
          formKey.currentState!.validate();


    },
        child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                alignment: Alignment.center,
                child: const Text(
                  "Hi Welcome back, you’ve been missed",
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 39),

              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  hintText: "Enter your email",
                ),

                validator:(value){
                  if (value == null || value.isEmpty)
                    {
                      return"Please enter your email";
                    }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              TextFormField(
                obscureText: ishidden,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  hintText: "Enter your password",
                  suffixIcon: IconButton(
                    icon: Icon(
                      ishidden ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        ishidden = !ishidden;
                      });
                    },
                  ),
                ),
                validator:(value){
                  if (value == null || value.isEmpty)
                  {
                    return"Please enter your password";
                  }else if(value.length<7){
                    return"Weak password";

                  }

                  return null;
                },
              ),
              const SizedBox(height: 8),


              const SizedBox(height: 24),


              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {

                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePageView(),
                      ),
                    );

                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFDD8560),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              const SizedBox(height: 16),

            ],
          ),

        ),
      ),
      ),
    );
  }
}
