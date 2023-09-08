import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';
import 'package:todo_list_provider/core/widget/todo_list_logo.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(builder: (context, constraints) {
      return SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
              minHeight: constraints.maxHeight, minWidth: constraints.maxWidth),

          /// Com o IntrinsicHeight é possivel saber o tamanho do espaço do column
          child: IntrinsicHeight(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 10,
              ),
              const TodoListLogo(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Form(
                  child: Column(children: [
                    TextFormField(),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: const Text("Esqueceu sua senha ?")),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          child: const Padding(
                              padding: EdgeInsets.all(10),
                              child: Text("Login")),
                        ),
                      ],
                    )
                  ]),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xffF0F3F7),
                    border: Border(
                        top: BorderSide(
                            width: 2, color: Colors.grey.withAlpha(50)))),
                child: Column(children: [
                  const SizedBox(
                    height: 30,
                  ),
                  SignInButton(
                      Buttons.google,
                      text: "Continue com o google",
                      padding: const EdgeInsets.all(5),
                      shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none),
                      
                      onPressed: () {},
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Não tem conta?"),
                        TextButton(onPressed: (){}, child: Text("Cadastre-se"),)
                      ],
                    )
                ]),
              )),
            ],
          )),
        ),
      );
    }));
  }
}
