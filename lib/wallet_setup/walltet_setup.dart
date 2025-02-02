import 'package:flutter/material.dart';

class WalletSetupScreen extends StatelessWidget {
  const WalletSetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 40),
            _buildIllustration(),
            _buildTitleAndDescription(),
            _buildButtons(),
          ],
        ),
      ),
    );
  }

  Widget _buildIllustration() {
    return Center(
      child: Image.asset(
        'assets/wallet_setup_image.png', // Replace with the actual image asset
        width: 250, // Adjust to match the design
      ),
    );
  }

  Widget _buildTitleAndDescription() {
    return Column(
      children: [
        Text(
          "Wallet Setup",
          style: TextStyle(
              fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 12),
        Text(
          "Import an existing wallet\nor create a new one",
          style: TextStyle(fontSize: 16, color: Colors.black54),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildButtons() {
    return Column(
      children: [
        _buildButton(
            "Import Using Seed Phrase", Colors.black12, Colors.black, false),
        SizedBox(height: 12),
        _buildButton(
            "Create A New Wallet", Colors.black, Colors.yellowAccent, true),
      ],
    );
  }

  Widget _buildButton(
      String text, Color bgColor, Color textColor, bool isBold) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          padding: EdgeInsets.symmetric(vertical: 16),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
