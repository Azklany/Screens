import 'package:flutter/material.dart';
import 'package:screens/screens/home.dart';
import 'package:screens/screens/login.dart';

class Porfile extends StatelessWidget {
  const Porfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const Home()));
                },
                icon: const Icon(Icons.arrow_back, color: Colors.black)),
            title: const Text("My Porfile"),
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => const Login()));
                  },
                  icon: const Icon(
                    Icons.output_outlined,
                    color: Colors.black,
                  ))
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 35),
                      child: Container(
                        decoration:
                            BoxDecoration(shape: BoxShape.circle, boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              blurRadius: 10,
                              spreadRadius: 2,
                              offset: const Offset(3, 3))
                        ]),
                        child: const CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('assets/logo.png'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "SkyLine Team",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Mobile Developer",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 134, 152, 206)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const MyWidget(icon: Icons.person_2_outlined, text: "About Me"),
                const MyWidget(icon: Icons.fact_check, text: "Projects"),
                const MyWidget(icon: Icons.create, text: "Skill"),
                const Divider(
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 15,
                ),
                const MyWidget(
                    icon: Icons.contact_emergency, text: "Contact Information"),
                const MyWidget(icon: Icons.notifications, text: "Notification"),
                const MyWidget(
                    icon: Icons.privacy_tip_rounded, text: "Privacy"),
              ],
            ),
          )),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 35),
          child: Row(
            children: [
              Container(
                height: 50,
                width: 60,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 3,
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 1)
                    ],
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
                    color: Colors.deepPurple),
                child: Center(
                  child: Icon(icon),
                ),
              ),
              Container(
                height: 50,
                width: 260,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 3,
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 1)
                    ],
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    color: Colors.white),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          text,
                          style: const TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.black,
                          ))
                    ]),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        )
      ],
    );
  }
}
