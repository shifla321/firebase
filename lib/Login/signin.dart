import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:respiro_projectfltr/Login/forgotpass.dart';
import 'package:respiro_projectfltr/Login/success.dart';
import 'package:respiro_projectfltr/home1.dart';

class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();

}

class _signinState extends State<signin> {
  final UserNameController = TextEditingController();
  final PasswordController = TextEditingController();
   final _formKey = GlobalKey<FormState>();
   String email="",password="";

 login()async
{
  try {
  final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: email,
    password: password,
 );
 ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Sign in succesfull')));
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const home1(),
            ));
} on FirebaseAuthException catch (e) {
  ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('invalid usrname or password')));
}
}
 
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              // color: Colors.red,
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/Wallpaper Sky.jpg",
                  ),
                  fit: BoxFit.cover)),
          child: Form(
            key: _formKey,

            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Text(
                    "Sign In",
                    style: TextStyle(fontSize: 34, color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: UserNameController,
                    decoration: InputDecoration(
                        fillColor: Colors.white.withOpacity(0.5),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon: const Icon(
                          Icons.person,
                          size: 30,
                        ),
                        hintText: "User Name",
                        hintStyle: const TextStyle(fontSize: 20)
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "please Enter a User Name";
                            
                          }
                          return null;
                        },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: TextFormField(
                 autovalidateMode: AutovalidateMode.onUserInteraction,
                    obscureText: true,
                    controller: PasswordController,
                    decoration: InputDecoration(
                        fillColor: Colors.white.withOpacity(0.5),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon: const Icon(
                          Icons.lock_outline,
                          size: 30,
                        ),
                        suffixIcon: const Icon(Icons.visibility_off),
                        hintText: "Password",
                        hintStyle: const TextStyle(fontSize: 20)
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                          return "please Enter a Password";}
                          return null;
                        },
                        
                        
                        
                  ),
                ),
                const SizedBox(
                  height: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 35),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(255, 0, 0, 0))),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => forgot()));
                        },
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(fontSize: 18),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 170,
                ),
                const Text(
                    "____________________________or_____________________________"),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/facebook.png"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/google.png"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                SizedBox(
                    height: 36,
                    width: 150,
                    child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            setState(() {
                              email=UserNameController.text;
                              password=PasswordController.text;
                            });
                            login();
                          }
                        },
                        child: Text("Sign In",
                            style: const TextStyle(fontSize: 20),
                            selectionColor: Colors.white.withOpacity(0.5)
                            )
                            )
                            )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
