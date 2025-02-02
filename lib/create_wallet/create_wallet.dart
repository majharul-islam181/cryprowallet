import 'package:flutter/material.dart';

class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({super.key});

  @override
  _CreatePasswordScreenState createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
  bool _obscureNewPassword = true;
  bool _obscureConfirmPassword = true;
  bool _useFaceID = true;
  bool _agreeTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildCloseButton(),
            SizedBox(height: 16),
            _buildProgressIndicator(),
            SizedBox(height: 24),
            _buildHeader(),
            SizedBox(height: 24),
            _buildPasswordField("New password", _obscureNewPassword, () {
              setState(() {
                _obscureNewPassword = !_obscureNewPassword;
              });
            }),
            _buildPasswordStrengthIndicator("Good"),
            SizedBox(height: 16),
            _buildPasswordField("Confirm password", _obscureConfirmPassword,
                () {
              setState(() {
                _obscureConfirmPassword = !_obscureConfirmPassword;
              });
            }, isConfirmed: true),
            _buildPasswordHint(),
            SizedBox(height: 24),
            _buildFaceIDToggle(),
            SizedBox(height: 24),
            _buildAgreementCheckbox(),
            Spacer(),
            _buildCreatePasswordButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildCloseButton() {
    return Align(
      alignment: Alignment.topLeft,
      child: IconButton(
        icon: Icon(Icons.close, color: Colors.black),
        onPressed: () {},
      ),
    );
  }

  Widget _buildProgressIndicator() {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(height: 6, color: Colors.black),
        ),
        Expanded(
          flex: 2,
          child: Container(height: 6, color: Colors.grey[300]),
        ),
        SizedBox(width: 8),
        Text("1/3", style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Create Password",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(
          "This password will unlock your Cryptooly wallet only on this service",
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ],
    );
  }

  Widget _buildPasswordField(String label, bool obscure, VoidCallback onToggle,
      {bool isConfirmed = false}) {
    return TextField(
      obscureText: obscure,
      decoration: InputDecoration(
        labelText: label,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        suffixIcon: isConfirmed
            ? Icon(Icons.check, color: Colors.green)
            : IconButton(
                icon: Icon(obscure ? Icons.visibility_off : Icons.visibility),
                onPressed: onToggle,
              ),
      ),
    );
  }

  Widget _buildPasswordStrengthIndicator(String strength) {
    return Padding(
      padding: EdgeInsets.only(left: 8, top: 4),
      child: Text(
        "Password strength: $strength",
        style: TextStyle(fontSize: 14, color: Colors.green),
      ),
    );
  }

  Widget _buildPasswordHint() {
    return Padding(
      padding: EdgeInsets.only(left: 8, top: 4),
      child: Text(
        "Must be at least 8 characters",
        style: TextStyle(fontSize: 14, color: Colors.grey),
      ),
    );
  }

  Widget _buildFaceIDToggle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Sign in with Face ID?",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        Switch(
          value: _useFaceID,
          activeColor: Colors.yellowAccent,
          activeTrackColor: Colors.black,
          onChanged: (value) {
            setState(() {
              _useFaceID = value;
            });
          },
        ),
      ],
    );
  }

  Widget _buildAgreementCheckbox() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Checkbox(
          value: _agreeTerms,
          activeColor: Colors.black,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          onChanged: (value) {
            setState(() {
              _agreeTerms = value!;
            });
          },
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              text:
                  "I understand that Cryptooly cannot recover this password for me. ",
              style: TextStyle(fontSize: 14, color: Colors.black),
              children: [
                TextSpan(
                  text: "Learn more",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCreatePasswordButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          padding: EdgeInsets.symmetric(vertical: 16),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        onPressed: () {},
        child: Text(
          "Create Password 00000",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.yellowAccent),
        ),
      ),
    );
  }
}
