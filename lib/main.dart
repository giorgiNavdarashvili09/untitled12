import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RegistrationForm(),
    );
  }
}

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({Key? key}) : super(key: key);

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  bool passwordHidden = true;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    const Icon(
                      Icons.supervisor_account,
                      size: 80,
                      //color: Colors.green,
                    ),
                    const Text(
                      "Welcome Back",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text(
                      "Sign To Continue",
                      style: TextStyle(fontSize: 15),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Form(
                      child: Column(
                        children: [
                          TextFormField(
                            controller: usernameController,
                            decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.account_circle_sharp,
                                    color: Colors.black, size: 30),
                                labelText: "Enter Username",
                                border: InputBorder.none,
                                suffixIcon: Icon(Icons.delete)),
                          ),
                          TextFormField(
                            obscureText: passwordHidden,
                            controller: passwordController,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.key,
                                color: Colors.black,
                              ),
                              border: InputBorder.none,
                              labelText: "Enter Password",
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      passwordHidden = !passwordHidden;
                                    });
                                  },
                                  icon: const Icon(Icons.remove_red_eye)),
                            ),
                          ),
                          Container(
                            width: 320,
                            height: 40,
                            child: const Text(
                              "Forgot Password",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFF68B895),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              width: 270,
                              height: 60,
                              color: const Color(0xFF01BA76),
                              child: const Center(
                                child: Text("LOGIN"),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
