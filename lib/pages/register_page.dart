// ignore_for_file: unused_import, prefer_const_constructors

import 'package:deliveryapp/components/my_button.dart';
import 'package:deliveryapp/components/my_textfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
    final TextEditingController confirmpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.fastfood,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              "Let's create an account",
              style: TextStyle(
                fontSize: 17,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            MyTextField(
              controller: emailController,
              hintText: 'Email',
              obscureText: false,
            ),
            const SizedBox(height: 10),
            MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),
             const SizedBox(height: 10),
            MyTextField(
              controller: confirmpasswordController,
              hintText: 'Confirm Password',
              obscureText: true,
            ),
            const SizedBox(height: 10),
            MyButton(
              text: 'Sign Un',
              onTap: () {},
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('already have an account?'),
                const SizedBox(width: 4,),
                GestureDetector(
                  onTap: widget.onTap,
                  child:
                   Text('Login now' , 
                   style: TextStyle(fontWeight: FontWeight.bold),)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}