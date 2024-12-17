import 'package:flutter/material.dart';

// Registration Screen
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 99, 94, 94).withOpacity(0.9),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height * 0.843,
                width: size.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: Text(
                          "Qoryooley Restaurant",
                          style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 7,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 21.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Enter your name',
                                prefixIcon: Icon(Icons.person),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(color: Colors.orange),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(color: Colors.orange),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(color: Colors.orange),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 21.0, vertical: 25),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Enter your Email',
                                prefixIcon: Icon(Icons.email),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(color: Colors.orange),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(color: Colors.orange),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(color: Colors.orange),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 21),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Enter your phone',
                                prefixIcon: Icon(Icons.phone),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(color: Colors.orange),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(color: Colors.orange),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(color: Colors.orange),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 21.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Enter your password',
                                prefixIcon: Icon(Icons.lock),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(color: Colors.orange),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(color: Colors.orange),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(color: Colors.orange),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.check_box, color: Colors.orange),
                                  Text("Remember me"),
                                ],
                              ),
                              Text("Forget password"),
                            ],
                          ),
                          SizedBox(height: 20),
                          Column(
                            children: [
                              SizedBox(
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 9),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.orange,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      "Signup",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Already have an account?", style: TextStyle(fontWeight: FontWeight.bold)),
                  InkWell(
                    onTap: () => Navigator.of(context).pop(),
                    child: Text(
                      "Sign in",
                      style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}