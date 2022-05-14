import 'package:eyoklama/constants/color_constants.dart';
import 'package:eyoklama/constants/image_constants.dart';
import 'package:eyoklama/constants/svg_constants.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController idController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Widget _buildLogo() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: SvgConstants.buildIcon(SvgConstants.logo, 40),
    );
  }

  Widget _buildIDForm() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: ColorConstants.white),
        child: TextFormField(
          controller: idController,
          decoration: InputDecoration(
              prefixIcon: SvgConstants.buildIcon(SvgConstants.person, 3),
              border: InputBorder.none),
          obscureText: false,
        ));
  }

  Widget _buildPasswordForm() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: ColorConstants.white),
        child: TextFormField(
          controller: passwordController,
          decoration: InputDecoration(
              prefixIcon: SvgConstants.buildIcon(SvgConstants.lock, 10),
              border: InputBorder.none),
          obscureText: true,
        ));
  }

  Widget _buildLoginButton() {
    return InkWell(
      onTap: () {},
      child: Container(
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ImageConstants.edevlet,
              const Text("E-Devlet ile Giriş yap",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500)),
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: context.dynamicHeight(0.6),
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                color: ColorConstants.primary),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildLogo(),
                const Text(
                  "Giriş Yap",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                _buildIDForm(),
                _buildPasswordForm(),
              ],
            ),
          ),
          SizedBox(
            height: context.dynamicHeight(0.06),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: _buildLoginButton()),
          SizedBox(
            height: context.dynamicHeight(0.2),
          )
        ],
      ),
    );
  }
}
