import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: Text(
                  'By using our live streaming app, you consent to the terms outlined in this privacy policy. It is essential to review this policy periodically, as updates may occur to reflect changes in our practices.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: Text(
                  'We may collect personal information, including but not limited to, name, email address, and payment details, to provide you with access to our live stream services and ensure a personalized experience.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: Text(
                  'Your personal information is used solely for the purpose of delivering and improving our live streaming services, processing transactions, and enhancing user experience.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
