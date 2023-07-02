import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => RegisterViewState();
}

class RegisterViewState extends State<RegisterView> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                  onChanged: (text) {
                    print('First text field: $text');
                  },
                  validator: (valid) {
                    if (valid == null || valid.isEmpty) {
                      "Please enter some text";
                    }
                    return null;
                  },
                  autofocus: true,
                  textCapitalization: TextCapitalization.characters,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: "Escriba algo",
                    labelText: "Nombre: ",
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
                    icon: Icon(Icons.last_page),
                    hintText: "Escriba algo",
                    labelText: "Apellido:",
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
                    icon: Icon(Icons.email),
                    hintText: "Escriba algo",
                    labelText: "Email:",
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
                    icon: Icon(Icons.phone),
                    hintText: "Escriba algo",
                    labelText: "Teléfono:",
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
                    icon: Icon(Icons.menu_book_outlined),
                    hintText: "Escriba algo",
                    labelText: "Cédula:",
                    border: OutlineInputBorder(),
                  )),
              const Divider(
                color: Colors.transparent,
                height: 18.0,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Registro terminado')),
                    );
                  }
                },
                child: const Text('Terminar Registro'),
              )
            ]));
  }
}
