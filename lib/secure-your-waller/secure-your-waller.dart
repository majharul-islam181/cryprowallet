import 'package:flutter/material.dart';

class SecureWalletScreen extends StatelessWidget {
  const SecureWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildBackButton(),
            SizedBox(height: 16),
            _buildProgressIndicator(),
            SizedBox(height: 24),
            _buildHeader(),
            SizedBox(height: 24),
            _buildIllustration(),
            SizedBox(height: 24),
            _buildDescription(),
            Spacer(),
            _buildButtons(),
          ],
        ),
      ),
    );
  }

  Widget _buildBackButton() {
    return Align(
      alignment: Alignment.topLeft,
      child: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.black),
        onPressed: () {},
      ),
    );
  }

  Widget _buildProgressIndicator() {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(height: 6, color: Colors.black),
        ),
        Expanded(
          flex: 1,
          child: Container(height: 6, color: Colors.grey[300]),
        ),
        SizedBox(width: 8),
        Text("2/3", style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget _buildHeader() {
    return Text(
      "Secure Your Wallet",
      style: TextStyle(
          fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
    );
  }

  Widget _buildIllustration() {
    return Center(
      child: Image.asset(
        'assets/secure_your_wallet.png', // Replace with the actual image asset
        width: 250, // Adjust to match the design
      ),
    );
  }

  Widget _buildDescription() {
    return RichText(
      text: TextSpan(
        text: "Don't risk losing your funds.",
        style: TextStyle(fontSize: 16, color: Colors.black),
        children: [
          TextSpan(
            text: " protect your wallet by saving your ",
            style: TextStyle(color: Colors.grey[600]),
          ),
          TextSpan(
            text: "seed phrase",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: " in a place you trust. ",
            style: TextStyle(color: Colors.grey[600]),
          ),
          TextSpan(
            text:
                "It's the only way to recover your wallet if you get locked out of the app or get a new device.",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }

  Widget _buildButtons() {
    return Column(
      children: [
        _buildButton("Remind Me Later", Colors.black12, Colors.black, false),
        SizedBox(height: 12),
        _buildButton("Start", Colors.black, Colors.yellowAccent, true),
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
