import 'package:flutter/material.dart';
import 'package:ticketapp/core/utils/button.dart';
import 'package:ticketapp/features/bottom_Nav_Bar/bottom_nav_bar.dart';
import 'package:ticketapp/features/home_page/presentation/view/homeview.dart';
import 'package:ticketapp/features/login_page/domain/service.dart';
import 'package:ticketapp/features/register_page/presentation/view/registerview.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController mobileController = TextEditingController(text: "ex123@example.com");
  TextEditingController  passwordController = TextEditingController(text: "password123");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 60),
                Text(
                  "Login",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.blue),
                ),
                const SizedBox(height: 10),
                Text(
                  "Please enter your registered mobile number to login",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black54),
                ),
                const SizedBox(height: 50),
                buildTextField("Mobile Number", mobileController),
                const SizedBox(height: 20),
                buildTextField("Password", passwordController, isPassword: true),
                const SizedBox(height: 20),
                DefaultButton(
                  press: () async {
                    if (_formKey.currentState!.validate()) {
                      setState(() {});
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BottomNavigationBarScreen()),
                      );
                      VisLoginService().loginUser(
                        password: passwordController.text,
                        isEmail: mobileController.text,
                        context: context,
                      );
                    } else {
                      setState(() {});
                    }
                  },
                  text: "Login",
                ),
                // ElevatedButton(
                //   onPressed: () async {
                //     if (_formKey.currentState!.validate()) {
                //       setState(() {});
                //       Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) => BottomNavigationBarScreen()),
                //       );
                //       VisLoginService().loginUser(
                //         password: passwordController.text,
                //         isEmail: mobileController.text,
                //         context: context,
                //       );
                //       } else {
                //       setState(() {});
                //     }
                //   },
                //   style: ElevatedButton.styleFrom(
                //     primary: Colors.blue,
                //     minimumSize: const Size(400, 60),
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(40),
                //     ),
                //   ),
                //   child: const Text(
                //     "Login",
                //     style: TextStyle(fontSize: 24, color: Colors.white),
                //   ),
                // ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => const ForgotScreen(),
                    //   ),
                    // );
                  },
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?"),
                    const SizedBox(width: 5),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        "Register Now",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String labelText, TextEditingController controller,
      {bool isPassword = false}) {
    return TextFormField(
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: "Please enter $labelText",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please enter your $labelText";
        }
        return null;
      },
    );
  }
}