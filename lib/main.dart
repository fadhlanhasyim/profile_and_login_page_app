import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          "Profile",
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
        backgroundColor: Colors.red,
        elevation: 0,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Expanded(
            child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(30)),
                  color: Colors.red,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        child: const CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/images/tony.jpg",
                      ),
                      radius: 120,
                    )
                        // decoration: BoxDecoration(
                        //borderRadius: BorderRadius.all(Radius.circular(100))
                        //),
                        ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("Tony Stark",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text("NPM 2106652222",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold))
                  ],
                ))),
        Expanded(
            child: Container(
                color: Colors.white,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 40),
                      Container(
                        child: const Text("Bio",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        decoration: const BoxDecoration(
                            border: Border(
                                left: BorderSide(
                                    width: 12, color: Colors.redAccent)),
                            color: Color(0xffe1a5a2)),
                        width: double.infinity,
                        padding:
                            const EdgeInsets.only(left: 8, top: 10, bottom: 10),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: const Text(
                            "Anak Fasilkom yang lebih suka matematika daripada ngoding",
                            style:
                                TextStyle(color: Colors.black, fontSize: 18)),
                        width: double.infinity,
                        padding: const EdgeInsets.only(left: 20),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: const Text("Motivasi",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        decoration: const BoxDecoration(
                            border: Border(
                                left: BorderSide(
                                    color: Colors.redAccent, width: 12)),
                            color: Color(0xffe1a5a2)),
                        width: double.infinity,
                        padding:
                            const EdgeInsets.only(left: 8, top: 10, bottom: 10),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: const Text(
                            "Motivasi saya adalah agar bisa menghasilkan uang sedini mungkin",
                            style:
                                TextStyle(color: Colors.black, fontSize: 18)),
                        width: double.infinity,
                        padding: const EdgeInsets.only(left: 20),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: SizedBox(
                          width: 200,
                          height: 40,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LoginPage()));
                            },
                            child: const Text(
                              "BACK",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red,
                            ),
                          ),
                        ),
                      )
                    ]))),
      ]),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Color merah = const Color(0xFFBB3030);
  TextEditingController username = TextEditingController();
  TextEditingController pass = TextEditingController();
  String info = "INFO: There's no information";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.red,
          elevation: 0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
                child: Container(
              padding: const EdgeInsets.only(left: 24, top: 24, right: 24),
              decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(30))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "EDU",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 100,
                            color: Colors.white),
                      ),
                      Text(
                        "care",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 75,
                            color: Colors.white),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: const Text(
                      "USERNAME",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: TextField(
                      controller: username,
                      onTap: () {
                        setState(() {
                          info = "INFO: There's no information";
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("PASSWORD",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white)),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: TextField(
                      obscureText: true,
                      controller: pass,
                      onTap: () {
                        setState(() {
                          info = "INFO: There's no information";
                        });
                      },
                    ),
                  ),
                ],
              ),
            )),
            Expanded(
                child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: 200,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      if (username.text == "Tony" && pass.text == "123") {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      } else {
                        setState(() {
                          info = "INFO: Invalid username or password";
                        });
                      }
                    },
                    child: const Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Text(info,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.red))
              ],
            ))
          ],
        ));
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
