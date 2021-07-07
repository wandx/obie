import 'package:flutter/material.dart';
import 'package:obie/presentation/screens/login/widgets/form_card_widget.dart';
import 'package:obie/presentation/screens/login/widgets/logo_widget.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.orange500,
      body: VStack([
        const LogoWidget(),
        const FormCardWidget(
          margin: 30,
        ),
        VStack(
          [
            'Forgot Password ?'.text.white.size(20).makeCentered(),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                fixedSize: Size(100, 45),
              ),
              onPressed: () {},
              child: 'Sign In'.text.size(20).black.make(),
            ).wFull(context),
            SizedBox(height: 20),
            HStack([
              const Divider(
                color: Vx.white,
                thickness: 1.2,
              ).expand(),
              SizedBox(width: 10),
              'or sign in with'.text.white.size(20).make(),
              SizedBox(width: 10),
              const Divider(
                color: Vx.white,
                thickness: 1.2,
              ).expand(),
            ]),
            SizedBox(height: 20),
            HStack([
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  fixedSize: Size(100, 45),
                ),
                onPressed: () {},
                icon: Image.asset(
                  'assets/facebook.png',
                  width: 20,
                  height: 20,
                ),
                label: 'Facebook'.text.size(20).black.make(),
              ).expand(),
              SizedBox(width: 20),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  fixedSize: Size(100, 45),
                ),
                onPressed: () {},
                icon: Image.asset(
                  'assets/google.png',
                  width: 20,
                  height: 20,
                ),
                label: 'Google'.text.size(20).black.make(),
              ).expand(),
            ]).wFull(context),
            SizedBox(height: 40),
            Text.rich(
              TextSpan(
                text: 'Don\'t have an account? ',
                children: [
                  TextSpan(
                    text: 'Sign Up',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ).wFull(context),
          ],
          alignment: MainAxisAlignment.center,
        ).box.padding(EdgeInsets.all(30)).make(),
      ]).wFull(context).scrollVertical(),
    );
  }
}
