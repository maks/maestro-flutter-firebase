import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<ProfileScreen>(
                  builder: (context) => ProfileScreen(
                    appBar: AppBar(
                      title: const Text('User Profile'),
                    ),
                    avatar: CircleAvatar(child: Image.asset('assets/dash.png')),
                    actions: [
                      SignedOutAction((context) {
                        Navigator.of(context).pop();
                      })
                    ],
                    children: [
                      const Divider(),
                      SizedBox(
                        height: 300,
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: Image.asset('flutterfire_300x.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          )
        ],
        automaticallyImplyLeading: false,
      ),
      body: const Center(
        child: DashWelcomesYou(),
      ),
    );
  }
}

class DashWelcomesYou extends StatefulWidget {
  const DashWelcomesYou({super.key});

  @override
  State<DashWelcomesYou> createState() => _DashWelcomesYouState();
}

class _DashWelcomesYouState extends State<DashWelcomesYou> {
  final welcomeText = "Welcome !";
  String dashSays = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 500,
          child: Image.asset('assets/dash.png'),
        ),
        Text(
          dashSays,
          style: Theme.of(context).textTheme.displaySmall,
        ),
        MaterialButton(
          child: const Text("Say hello to Dash..."),
          onPressed: () => setState(() {
            dashSays = welcomeText;
          }),
        ),
        const SignOutButton(),
      ],
    );
  }
}
