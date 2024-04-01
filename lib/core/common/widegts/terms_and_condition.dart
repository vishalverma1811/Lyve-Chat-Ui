import 'package:flutter/material.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terms and Conditions'),
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
                  'Users are responsible for maintaining the confidentiali of their account information and agree not to share th login credentials. Any unauthorized use of accounts or suspicious activities should be reported immediately.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: Text(
                  'Users are responsible for maintaining the confidential of their account information and agree not to share th login credentials. Any unauthorized use of accounts or suspicious activities should be reported immediately.Users are responsible for maintaining the confidentiali of their account information and agree not to share t login credentials. Any unauthorized use of accounts or suspicious activities should be reported immediately.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: Text(
                  'Any unauthorized use of accounts or suspicious activities should be reported immediately.Users are responsible for maintaining the confidentiali of their account information and agree not to share t login credentials. Any unauthorized use of accounts or suspicious activities should be reported immediately.',
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
