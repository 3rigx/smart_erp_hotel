import 'package:flutter/material.dart';
import 'package:smart_erp_hotel/login/utils/custom_sign_in_dialog.dart';
import 'package:smart_erp_hotel/widgets/dialoug_button.dart';

import '../Utils/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String email, password;
  final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      color: AppColors.contentColorWhite,
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          Image.network(
            'https://www.softsmarterp.com/images/smedia.png',
            // width: 200,
            //  height: 200,
            fit: BoxFit.fill,
          ),
          const Spacer(
            flex: 1,
          ),
          Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(
                    width: width / 3.5,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 2,
                        bottom: 10,
                      ),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Input Email";
                          }
                          if (!emailRegex.hasMatch(value)) {
                            return "Invalid Email";
                          }
                          setState(() {
                            email = value;
                          });
                          return null;
                        },
                        onSaved: (email) {
                          email = email;
                        },
                        decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width / 3.5,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 2,
                        bottom: 5,
                      ),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Input Password";
                          }
                          setState(() {
                            password = value;
                          });
                          return null;
                        },
                        onSaved: (password) {
                          password = password;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
          SizedBox(
            width: 200,
            child: ButtonWithStyle(
              name: 'Sign in',
              color: AppColors.contentColorGreen,
              onTap: () {
                if (_formKey.currentState!.validate()) {}
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              customSinginDialog(
                context,
                width / 2,
                height / 1,
                onClosed: (_) {},
              );
            },
            child: const Text(
              'Forgot Password?',
              style: TextStyle(
                  color: AppColors.contentColorRed,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          const Text(
            'Smart Media ERP Version 7 Softsmart Business Solutions 2019',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    ));
  }
}
