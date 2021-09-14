import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:maaru/core/theme/maaru_style.dart';
import 'package:maaru/core/theme/style.dart';
import 'package:maaru/core/widget/icons.dart';
import 'package:maaru/core/widget/logo.dart';
import 'package:maaru/core/widget/round_button.dart';
import 'package:maaru/core/widget/themed_text_field.dart';
import 'package:maaru/core/widget/widgets.dart';
import 'package:maaru/features/register/presentation/bloc/register_bloc.dart';
import 'package:maaru/features/register/presentation/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _passwordController;
  TextEditingController _emailController;
  int count = 0;

  @override
  void initState() {
    _passwordController = TextEditingController();
    _emailController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: SafeArea(
                child: Column(children: [
          Logo(),
          ScreenIcon(),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'or login with email',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              child: Column(children: [
            Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
              ThemedTextField("Email", TextInputType.emailAddress,
                  textInputAction: TextInputAction.next, onChanged: (text) {
                BlocProvider.of<RegisterBloc>(context).add(EmailChanged(text));
              }, editingController: _emailController),
              SizedBox(
                height: 5,
              ),
              ThemedTextField(
                "Password",
                TextInputType.visiblePassword,
                textInputAction: TextInputAction.next,
                onChanged: (text) {
                  BlocProvider.of<RegisterBloc>(context)
                      .add(PasswordChanged(text));
                },
                editingController: _passwordController,
              ),
              SizedBox(
                height: 20,
              ),
              ThemedButton(
                text: 'Login',
                onPressed: () {},
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: GoToSignInText(),
              ),
              SizedBox(
                height: 20,
              ),
            ])
          ]))
        ]))));
  }
}

/// Text for showing at bottom of screen
/// Tapping on it should take user to reset password screen
class GoToSignInText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Not a member? ',
          style: MaaruStyle.text.medium,
        ),
        InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => RegisterScreen()));
            },
            child: Text(
              'Signup ',
              style: MaaruStyle.text.mediumDisable,
            ))
      ],
    );
  }
}
