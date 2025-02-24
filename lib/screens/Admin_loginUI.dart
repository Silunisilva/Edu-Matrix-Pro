import 'package:flutter/material.dart';
import '../widgets/gradient_scaffold.dart';
import '../widgets/gradient_button.dart';

class AdminLoginScreen extends StatelessWidget {
  const AdminLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage('assets/admin_avatar.png'),
          ),
          const SizedBox(height: 20),
          const Text(
            "Admin Login",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Column(
              children: [
                // TextFields remain same
                const SizedBox(height: 20),
                GradientButton(
                  text: "Login",
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}