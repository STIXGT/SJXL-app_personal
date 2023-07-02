import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});
  @override
  State<LoginView> createState() => LoginViewState();
}

class LoginViewState extends State<LoginView> {
  final _loginKey = GlobalKey<FormState>();

  void _loginWithFacebook() {
    // Lógica de inicio de sesión con Facebook
  }

  void _loginWithGoogle() {
    // Lógica de inicio de sesión con Google
  }

  void _recoverPassword() {
    // Lógica para recuperar contraseña
  }

  void _submit(String email, String password) {
    if (_isValidEmail(email) && _isValidPassword(password)) {
      // Lógica para iniciar sesión con el correo y la contraseña ingresados
    }
  }

  bool _isValidEmail(String email) {
    // Validación básica del correo
    return email.isNotEmpty && email.contains('@');
  }

  bool _isValidPassword(String password) {
    // Validación básica de la contraseña
    return password.isNotEmpty && password.length >= 6;
  }

  // ignore: prefer_typing_uninitialized_variables
  var emailController;
  // ignore: prefer_typing_uninitialized_variables
  var passwordController;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _loginKey,
        child: Column(
          children: <Widget>[
            const Image(
              image: AssetImage("assets/logo.png"),
              width: 250,
            ),
            const Divider(
              color: Colors.transparent,
              height: 25.0,
            ),
            TextFormField(
                enableInteractiveSelection: false,
                textCapitalization: TextCapitalization.characters,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: "Escribir el correo",
                  labelText: "Email: ",
                  border: OutlineInputBorder(),
                )),
            const Divider(
              color: Colors.transparent,
              height: 18.0,
            ),
            TextFormField(
              enableInteractiveSelection: false,
              textCapitalization: TextCapitalization.characters,
              decoration: const InputDecoration(
                icon: Icon(Icons.lock),
                hintText: "Escribir la contraseña",
                labelText: "Contraseña:",
                border: OutlineInputBorder(),
              ),
              obscureText: true, // Oculta el texto ingresado
            ),
            const Divider(
              color: Colors.transparent,
              height: 18.0,
            ),
            ElevatedButton(
              onPressed: () => _submit(
                  emailController.text.trim(), passwordController.text.trim()),
              child: const Text('Iniciar Sesión'),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: _loginWithFacebook,
                  icon: Icon(Icons.facebook),
                  label: Text('Facebook'),
                ),
                SizedBox(width: 16.0),
                ElevatedButton.icon(
                  onPressed: _loginWithGoogle,
                  icon: Icon(Icons.navigation_rounded),
                  label: Text('Google'),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            TextButton(
              onPressed: _recoverPassword,
              child: Text('Registrarse'),
            ),
          ],
        ));
  }
}
