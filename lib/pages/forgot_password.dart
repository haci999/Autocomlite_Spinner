import 'package:flutter/material.dart';
import '../widgets/custom_scaffold.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'Lupa Password',
      body: Column(
        children: [
          const Text('Masukkan email untuk reset password'),
          const SizedBox(height: 20),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Proses reset password
            },
            child: const Text('Kirim'),
          ),
        ],
      ),
    );
  }
}