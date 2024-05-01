// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:random_string/random_string.dart';
// import 'package:respiro_projectfltr/home1.dart';
// import 'package:toggle_switch/toggle_switch.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// class signup_ph extends StatefulWidget {
//   const signup_ph({super.key});

//   @override
//   State<signup_ph> createState() => _signup_phState();
// }

// String _email = "", Password = "";

// class _signup_phState extends State<signup_ph> {
//   final UserNameController = TextEditingController();
//   final ppasswordController = TextEditingController();
//   final pphoneNumberController = TextEditingController();
//   final cconformPasswordController = TextEditingController();
//   final emailController = TextEditingController();
//   final usernameController = TextEditingController();
//   final passwordController = TextEditingController();
//   final phoneNumberController = TextEditingController();
//   final conformpassword = TextEditingController();

//   final _formKey = GlobalKey<FormState>();
//   Future addfirebase(Map<String,dynamic> registereinfomap, String userid)async{
//     return FirebaseFirestore.instance
//     .collection('user firebase')
//     .doc(userid)
//     .set(registereinfomap);
//   }


//   registration() async {
//     if (Password != null) {
//       try {
//         UserCredential userCredential = await FirebaseAuth.instance
//             .createUserWithEmailAndPassword(email: _email, password: Password);
//         ScaffoldMessenger.of(context)
//             .showSnackBar(SnackBar(content: Text("Registration Succesfull")));
//         Navigator.pushReplacement(
//             context, MaterialPageRoute(builder: (context) => home1()));
//             String registered_user_id = randomString(10);
//             Map<String,dynamic> registereinfomap = {
//               "name": usernameController.text,
//               "email": emailController.text,
//               "password" : ppasswordController.text,
//               "id": registered_user_id,
//             };
//             await addfirebase(registereinfomap, registered_user_id);
//             const SnackBar(content: Text("Details added to firebase Succesfully"));
            
//       } on FirebaseAuthException catch (e) {
//         if (e.code == "weak-password") {
//  ScaffoldMessenger.of(context)
//             .showSnackBar(SnackBar(content: Text("Weak Password"),));
            
//         }else if (e.code == "email-already-in-use"){
//           ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Email is Already used")));
            
          
//         }
        
       
//       }
//     }
//   }

//   @override

//   // registration() async {
//   //   if (Password != null) {
//   //     try{
//   //       UserCredential userCredential = await FirebaseAuth.instance.creareUserWithEmailAndPassword(email: email,Password: Password);
//   //       ScaffoldMessenger.of(context).showSnackBar(
//   //         snackBar(
//   //           content:Text("Registration Succes"),
//   //         ),
//   //       );
//   //      navigator.pushReplacement(

//   //      )

//   //     }on
//   //   }
//   // }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: DefaultTabController(
//           length: 1,
//           child: Container(
//             height: MediaQuery.of(context).size.height,
//             width: MediaQuery.of(context).size.width,
//             decoration: BoxDecoration(
//                 color: Colors.red,
//                 image: DecorationImage(
//                     image: AssetImage("assets/images/Wallpaper Sky.jpg"),
//                     fit: BoxFit.cover)),
//             child: Form(
//               key: _formKey,
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(top: 80),
//                     child: Text(
//                       "Sign up",
//                       style: TextStyle(fontSize: 32),
//                       selectionColor: Colors.white,
//                     ),
//                   ),
//                   Padding(
//                       padding: const EdgeInsets.only(top: 30, left: 40, right: 40),
//                       child: Expanded(
//                         child: TabBar(tabs: [
//                           Tab(
//                             child: Text('Phone_No',style: TextStyle(fontSize: 22),),
                            
//                           ),
//                           Tab(
//                             child: Text('Email',style: TextStyle(fontSize: 22),),
//                           )
//                         ]),
//                       )
//                       // child: ToggleSwitch(activeBgColor: [Colors.white],
//                       // inactiveBgColor: Colors.white.withOpacity(0.5),
//                       // labels: const [
//                       //   "Email",
//                       //   "Phone_no",
//                       // ],activeFgColor: Colors.black,
//                       // fontSize: 22,
//                       // minHeight: 55,
//                       // minWidth:150,
//                       // cornerRadius: 10,
          
//                       //           ),
//                       ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Expanded(
//                     child: TabBarView(children: [
//                       Container(
//                         child: Column(
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.only(left: 40, right: 40),
//                               child: TextFormField(
//                                 validator: (value) {
//                                   if (value!.length < 9) {
//                                     return "Please Enter a Valid Phone Number";
//                                   }
//                                   return null;
//                                 },
//                                 autovalidateMode:
//                                     AutovalidateMode.onUserInteraction,
//                                 controller: pphoneNumberController,
//                                 decoration: InputDecoration(
//                                   fillColor: Colors.white.withOpacity(0.5),
//                                   filled: true,
//                                   border: OutlineInputBorder(
//                                       borderRadius: BorderRadius.circular(10)),
//                                   prefixIcon: Icon(
//                                     Icons.phone_rounded,
//                                     size: 30,
//                                   ),
//                                   hintText: "Phone Number  ",
//                                   hintStyle:
//                                       TextStyle(color: Colors.black, fontSize: 22),
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               height: 10,
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(left: 40, right: 40),
//                               child: TextFormField(
//                                 validator: (value) {
//                                    if (value==null || value.isEmpty) {
//                                     return "Enter A VAlid UserName";
//                                   }
//                                   return null;
//                                 },
//                                 autovalidateMode:
//                                     AutovalidateMode.onUserInteraction,
//                                 controller: UserNameController,
//                                 decoration: InputDecoration(
//                                   fillColor: Colors.white.withOpacity(0.5),
//                                   filled: true,
//                                   border: OutlineInputBorder(
//                                       borderRadius: BorderRadius.circular(10)),
//                                   prefixIcon: Icon(
//                                     Icons.person,
//                                     size: 30,
//                                   ),
//                                   hintText: "User Name",
//                                   hintStyle:
//                                       TextStyle(color: Colors.black, fontSize: 22),
//                                 ),
//                               ),
//                             ),
//                             SizedBox(height: 10,),
//                              Padding(
//                               padding: const EdgeInsets.only(left: 40, right: 40),
//                               child: TextFormField(
//                                 validator: (value) {
//                                   if (value!.length < 9) {
//                                     return "Please Enter a Valid Phone Number";
//                                   }
//                                   return null;
//                                 },
//                                 autovalidateMode:
//                                     AutovalidateMode.onUserInteraction,
//                                 controller: emailController,
//                                 decoration: InputDecoration(
//                                   fillColor: Colors.white.withOpacity(0.5),
//                                   filled: true,
//                                   border: OutlineInputBorder(
//                                       borderRadius: BorderRadius.circular(10)),
//                                   prefixIcon: Icon(
//                                     Icons.email,
//                                     size: 30,
//                                   ),
//                                   hintText: "Email  ",
//                                   hintStyle:
//                                       TextStyle(color: Colors.black, fontSize: 22),
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               height: 10,
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(left: 40, right: 40),
//                               child: TextFormField(
//                                 validator: (value) {
//                                    if (value==null || value.isEmpty) {
//                                     return "Enter A Valid Password";
//                                   }
//                                   return null;
//                                 },
//                                 autovalidateMode:
//                                     AutovalidateMode.onUserInteraction,
//                                 controller: ppasswordController,
//                                 decoration: InputDecoration(
//                                   fillColor: Colors.white.withOpacity(0.5),
//                                   filled: true,
//                                   border: OutlineInputBorder(
//                                       borderRadius: BorderRadius.circular(10)),
//                                   prefixIcon: Icon(Icons.lock_outline),
//                                   suffixIcon: Icon(
//                                     Icons.remove_red_eye_sharp,
//                                     size: 30,
//                                   ),
//                                   hintText: "Password",
//                                   hintStyle:
//                                       TextStyle(color: Colors.black, fontSize: 22),
//                                 ),
          
//                               ),
//                             ),
//                             SizedBox(
//                               height: 10,
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(left: 40, right: 40),
//                               child: TextFormField(
                                
                                
//                                 autovalidateMode:
//                                     AutovalidateMode.onUserInteraction,
//                                 controller: cconformPasswordController,
//                                 decoration: InputDecoration(
//                                   fillColor: Colors.white.withOpacity(0.5),
//                                   filled: true,
//                                   border: OutlineInputBorder(
//                                       borderRadius: BorderRadius.circular(10)),
//                                   hintText: "    Conform Password",
//                                   hintStyle:
//                                       TextStyle(color: Colors.black, fontSize: 22),
//                                 ),
//                                 validator: (value) {
//                                   if (value==null || value.isEmpty) {
//                                     return "Enter A Valid Password";
//                                   }
//                                   return null;
//                                 },
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(top: 30),
//                               child: SizedBox(
//                                 height: 36,
//                                 width: 150,
//                                 child: ElevatedButton(
//                                     onPressed: () {
//                                       if (_formKey.currentState!.validate()) {
//                                         setState(() {
//                                           Password = ppasswordController.text;
                                          
//                                         });
//                                         registration();
//                                         // Navigator.push(
//                                         //     context,
//                                         //     MaterialPageRoute(
//                                         //         builder: (context) => home1()));
//                                       }
//                                     },
//                                     child: Text(
//                                       "Sign Up ",
//                                       style: TextStyle(fontSize: 20),
//                                       selectionColor: Colors.black,
//                                     )),
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                     //   Container(
//                     //     child: Column(
//                     //       children: [
//                     //         Padding(
//                     //           padding: const EdgeInsets.only(left: 40, right: 40),
//                     //           child: TextFormField(
//                     //             validator: (value) {
                                  
//                     //               if (value!.isEmpty) {
//                     //                 return "Enter an Email";
                                    
//                     //               }
//                     //               RegExp emailRegExp = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
//                     //               return null;
//                     //             },
//                     //             controller: emailController,
//                     //             decoration: InputDecoration(
//                     //               fillColor: Colors.white.withOpacity(0.5),
//                     //               filled: true,
//                     //               border: OutlineInputBorder(
//                     //                   borderRadius: BorderRadius.circular(10)),
//                     //               prefixIcon: const Icon(
//                     //                 Icons.email_outlined,
//                     //                 size: 30,
//                     //               ),
//                     //               hintText: " Email",
//                     //               hintStyle: const TextStyle(
//                     //                   color: Colors.black, fontSize: 22),
//                     //             ),
//                     //           ),
//                     //         ),
//                     //         const SizedBox(
//                     //           height: 10,
//                     //         ),
//                     //         Padding(
//                     //           padding: const EdgeInsets.only(left: 40, right: 40),
//                     //           child: TextFormField(
                               
//                     //             validator: (value) {
//                     //                if (value==null || value.isEmpty) {
//                     //                 return "Enter A Username";
//                     //               }
//                     //               return null;
//                     //             },
//                     //             autovalidateMode:
//                     //                 AutovalidateMode.onUserInteraction,
//                     //             controller: usernameController,
//                     //             decoration: InputDecoration(
//                     //               fillColor: Colors.white.withOpacity(0.5),
//                     //               filled: true,
//                     //               border: OutlineInputBorder(
//                     //                   borderRadius: BorderRadius.circular(10)),
//                     //               prefixIcon: const Icon(
//                     //                 Icons.person,
//                     //                 size: 30,
//                     //               ),
//                     //               hintText: "User Name",
//                     //               hintStyle: const TextStyle(
//                     //                   color: Colors.black, fontSize: 22),
//                     //             ),
                                
//                     //           ),
//                     //         ),
//                     //         const SizedBox(
//                     //           height: 10,
//                     //         ),
//                     //         Padding(
//                     //           padding: const EdgeInsets.only(left: 40, right: 40),
//                     //           child: TextFormField(
//                     //              validator: (value) {
//                     //                if (value==null || value.isEmpty) {
//                     //                 return "Enter A Username";
//                     //               }
//                     //               return null;
//                     //             },
//                     //             autovalidateMode:
//                     //                 AutovalidateMode.onUserInteraction,
//                     //             controller: passwordController,
          
//                     //             decoration: InputDecoration(
//                     //               fillColor: Colors.white.withOpacity(0.5),
//                     //               filled: true,
//                     //               border: OutlineInputBorder(
//                     //                   borderRadius: BorderRadius.circular(10)),
//                     //               prefixIcon: const Icon(Icons.lock_outline),
//                     //               suffixIcon: const Icon(
//                     //                 Icons.remove_red_eye_sharp,
//                     //                 size: 30,
//                     //               ),
//                     //               hintText: "Password",
//                     //               hintStyle: const TextStyle(
//                     //                   color: Colors.black, fontSize: 22),
//                     //             ),
//                     //           ),
//                     //         ),
//                     //         const SizedBox(
//                     //           height: 10,
//                     //         ),
//                     //         Padding(
//                     //           padding: const EdgeInsets.only(left: 40, right: 40),
//                     //           child: TextFormField(
//                     //              validator: (value) {
//                     //                if (value==null || value.isEmpty) {
//                     //                 return "Enter A password";
//                     //               }
//                     //               return null;
//                     //             },
//                     //             autovalidateMode:
//                     //                 AutovalidateMode.onUserInteraction,
//                     //             controller: conformpassword,
          
//                     //             decoration: InputDecoration(
//                     //               fillColor: Colors.white.withOpacity(0.5),
//                     //               filled: true,
//                     //               border: OutlineInputBorder(
//                     //                   borderRadius: BorderRadius.circular(10)),
//                     //               hintText: "    Conform Password",
//                     //               hintStyle: const TextStyle(
//                     //                   color: Colors.black, fontSize: 22),
//                     //             ),
//                     //           ),
//                     //         ),
//                     //         Padding(
//                     //           padding: const EdgeInsets.only(top: 30),
//                     //           child: SizedBox(
//                     //             height: 36,
//                     //             width: 150,
//                     //             child: ElevatedButton(
//                     //                 onPressed: () {
//                     //                   if (_formKey.currentState!.validate()) {
//                     //                     setState(() {
//                     //                       _email = emailController.text;
//                     //                       Password = passwordController.text;
//                     //                     });
//                     //                     registration();
//                     //                   }
                                       
//                     //                 },
//                     //                 child: const Text(
//                     //                   "Sign Up ",
//                     //                   style: TextStyle(fontSize: 20),
//                     //                   selectionColor: Colors.black,
//                     //                 )),
//                     //           ),
//                     //         )
//                     //       ],
//                     //     ),
//                     //   )
//                     ]),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ));
//   }
// }


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:random_string/random_string.dart';
import 'package:respiro_projectfltr/home1.dart';

class signup_ph extends StatefulWidget {
  const signup_ph({super.key});

  @override
  State<signup_ph> createState() => _signup_phState();
}

class _signup_phState extends State<signup_ph> {

  final _formKey=GlobalKey<FormState>();
  final phoneController=TextEditingController();
   final nameController=TextEditingController();
    final emailController=TextEditingController();
     final passwordController=TextEditingController();
      final confirmController=TextEditingController();
      String email="",password="";

      Future addfirebase(Map<String,dynamic> registereinfomap, String userid)async{
    return FirebaseFirestore.instance
    .collection('user firebase')
    .doc(userid)
    .set(registereinfomap);
  }

     registration() async {
    if (password != null) {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Registration Succesfull")));
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => home1()));
            String registered_user_id = randomString(10);
            Map<String,dynamic> registereinfomap = {
              "name": nameController.text,
              "email": emailController.text,
              "password" : passwordController.text,
              "id": registered_user_id,
            };
            await addfirebase(registereinfomap, registered_user_id);
            const SnackBar(content: Text("Details added to firebase Succesfully"));
            
      } on FirebaseAuthException catch (e) {
        if (e.code == "weak-password") {
 ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Weak Password"),));
            
        }else if (e.code == "email-already-in-use"){
          ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Email is Already used")));
            
          
        }
        
       
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                    image: AssetImage("assets/images/Wallpaper Sky.jpg"),
                    fit: BoxFit.cover)),
                    child:  Form(
                      key: _formKey,
                      child: Column(
                        children: [
                           Padding(
                    padding: EdgeInsets.only(top: 80),
                    child: Text(
                      "Sign up",
                      style: TextStyle(fontSize: 32),
                      selectionColor: Colors.white,
                    ),
                  ),
                  Padding(
                              padding:  EdgeInsets.only(top: 40, right: 40,left: 40),
                              child: TextFormField(
                                validator: (value) {
                                  if (value==null || value!.isEmpty) {
                                    return "Please Enter a user name";
                                  }
                                  return null;
                                },
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                controller: nameController,
                                decoration: InputDecoration(
                                  fillColor: Colors.white.withOpacity(0.5),
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  prefixIcon: Icon(
                                    Icons.account_circle_rounded,
                                    size: 30,
                                  ),
                                  hintText: "User Name  ",
                                  hintStyle:
                                      TextStyle(color: Colors.black, fontSize: 22),
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                             Padding(
                              padding:  EdgeInsets.only(left: 40, right: 40),
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.length < 9) {
                                    return "Please Enter a Valid Phone Number";
                                  }
                                  return null;
                                },
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                controller: phoneController,
                                decoration: InputDecoration(
                                  fillColor: Colors.white.withOpacity(0.5),
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  prefixIcon: Icon(
                                    Icons.phone_rounded,
                                    size: 30,
                                  ),
                                  hintText: "Phone Number  ",
                                  hintStyle:
                                      TextStyle(color: Colors.black, fontSize: 22),
                                ),
                              ),
                            ),
                             SizedBox(height: 10,),
                             Padding(
                              padding:  EdgeInsets.only(left: 40, right: 40),
                              child: TextFormField(
                               validator: (value) {
                                  
                                  if (value!.isEmpty) {
                                    return "Enter an Email";
                                    
                                  }
                                  RegExp emailRegExp = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                                  return null;
                                },
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                controller: emailController,
                                decoration: InputDecoration(
                                  fillColor: Colors.white.withOpacity(0.5),
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  prefixIcon: Icon(
                                    Icons.email,
                                    size: 30,
                                  ),
                                  hintText: "Email  ",
                                  hintStyle:
                                      TextStyle(color: Colors.black, fontSize: 22),
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                             Padding(
                              padding: const EdgeInsets.only(left: 40, right: 40),
                              child: TextFormField(
                                 validator: (value) {
                                   if (value==null || value.isEmpty) {
                                    return "Enter A password";
                                  }
                                  return null;
                                },
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                controller: passwordController,
          
                                decoration: InputDecoration(
                                  fillColor: Colors.white.withOpacity(0.5),
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                      prefixIcon: Icon(Icons.lock),
                                  hintText: " Password",
                                  hintStyle: const TextStyle(
                                      color: Colors.black, fontSize: 22),
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                             Padding(
                              padding: const EdgeInsets.only(left: 40, right: 40),
                              child: TextFormField(
                                 validator: (value) {
                                   if (value==null || value.isEmpty) {
                                    return "Please confirm your password";
                                  }
                                  return null;
                                },
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                controller: confirmController,
                                obscureText: true,
                                decoration: InputDecoration(
                                  fillColor: Colors.white.withOpacity(0.5),
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  prefixIcon: Icon(Icons.remove_red_eye),
                                  hintText: "Confirm Password",
                                  hintStyle: const TextStyle(
                                      color: Colors.black, fontSize: 22),
                          
                                ),
                              ),
                            ),

                             Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: SizedBox(
                                height: 36,
                                width: 150,
                                child: ElevatedButton(
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        setState(() {
                                          email = emailController.text;
                                          password = passwordController.text;
                                        });
                                        registration();
                                      }
                                       
                                    },
                                    child: const Text(
                                      "Sign Up ",
                                      style: TextStyle(fontSize: 20),
                                      selectionColor: Colors.black,
                                    )),
                              ),
                            )

                        ],
                      )),),
      )

    );
  }
}