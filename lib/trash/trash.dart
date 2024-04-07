// }

// class _StudentLoginpageState extends State<LoginScreenAlumini> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Center(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const SizedBox(
//                   height: 60,
//                 ),
//                 const Text(
//                   "Welcome",
//                   style: TextStyle(
//                     fontSize: 32,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//                 const SizedBox(height: 15),
//                 const Text(
//                   "Log in to Continue",
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.w500,
//                     color: Colors.black,
//                   ),
//                 ),
//                 const SizedBox(height: 15),
//                 MyTextField(
//                   controller: widget.emailController,
//                   hintText: "E-Mail",
//                   obscureText: false,
//                 ),
//                 const SizedBox(height: 15),
//                 MyTextField(
//                   controller: widget.passwordController,
//                   hintText: "Password",
//                   obscureText: true,
//                 ),
//                 // const SizedBox(height:5),
//                 Padding(
//                   padding: const EdgeInsets.only(right: 10.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       TextButton(
//                         onPressed: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => const ForgotPassword(),
//                             ),
//                           );
//                         },
//                         child: const Text(
//                           "Forgot Password?",
//                           style: TextStyle(color: Colors.black),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     fixedSize: Size(300, 55),
//                     foregroundColor: Colors.white,
//                     backgroundColor: Colors.blue,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 50, vertical: 15),
//                   ),
//                   onPressed: () {
//                     // Navigator.push(
//                     //   context,
//                     //   MaterialPageRoute(
//                     //     builder: (context) => const NavigationBarScreen(),
//                     //   ),
//                     // );
//                     _LoginScreenAluminiState();
//                   },
//                   child: const Text(
//                     "Log In",
//                     style: TextStyle(fontSize: 18),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Text(
//                       "Not a member?",
//                       style: TextStyle(color: Colors.black),
//                     ),
//                     TextButton(
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => const RegScreenAlumni(),
//                           ),
//                         );
//                       },
//                       child: const Text(
//                         "Register now",
//                         style: TextStyle(color: Colors.blue),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const Spacer(),
//                 /* Image(
//                   image: const AssetImage('assets/image/AlumniLogin.jpg'),
//                   width: MediaQuery.of(context).size.width,
//                   fit: BoxFit.cover,
//                 ),*/
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }