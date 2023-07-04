import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _idController = TextEditingController();

  bool _isEmailValid = true;

  void _register() {
    if (_formKey.currentState!.validate()) {
      // Realizar la lógica de registro aquí
      // Por ejemplo, enviar los datos al servidor o guardarlos localmente
      // y mostrar una alerta de éxito o navegar a la siguiente pantalla
    }
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor, ingresa un correo electrónico';
    } else if (!_isEmailValid) {
      return 'Ingresa un correo electrónico válido';
    }
    return null;
  }

  void _validateEmailFormat(String value) {
    // Validación de formato de correo electrónico
    final emailRegex = RegExp(
        r'^[\w-]+(\.[\w-]+)*@[a-zA-Z\d-]+(\.[a-zA-Z\d-]+)*\.[a-zA-Z\d-]+$');
    setState(() {
      _isEmailValid = emailRegex.hasMatch(value);
    });
  }

  String? _validateNumber(String? value, String fieldName) {
    if (value == null || value.isEmpty) {
      return 'Por favor, ingresa un $fieldName';
    } else if (!isNumeric(value)) {
      return 'Ingresa un $fieldName válido';
    }
    return null;
  }

  bool isNumeric(String? value) {
    if (value == null) {
      return false;
    }
    return double.tryParse(value) != null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/logo.png', width: 200, height: 200),
                const SizedBox(height: 16),
                const Text(
                  'Inicia Sesión Ahora',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _nameController,
                        decoration: const InputDecoration(
                          labelText: 'Nombre',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor, ingresa tu nombre';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: _lastNameController,
                        decoration: const InputDecoration(
                          labelText: 'Apellido',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor, ingresa tu apellido';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: _emailController,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                        ),
                        validator: _validateEmail,
                        onChanged: _validateEmailFormat,
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: _phoneController,
                        decoration: const InputDecoration(
                          labelText: 'Teléfono',
                        ),
                        keyboardType: TextInputType.number,
                        validator: (value) =>
                            _validateNumber(value, 'teléfono'),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: _idController,
                        decoration: const InputDecoration(
                          labelText: 'Cédula',
                        ),
                        keyboardType: TextInputType.number,
                        validator: (value) => _validateNumber(value, 'cédula'),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: _passwordController,
                        decoration: const InputDecoration(
                          labelText: 'Contraseña',
                        ),
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor, ingresa una contraseña';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: _register,
                        child: const Text('Registrarse'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                const Text('O puedes registrarte con:'),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Botón visual de inicio de sesión con Facebook
                    OutlinedButton(
                      onPressed: () {
                        // Lógica para iniciar sesión con Facebook
                        // Aquí puedes agregar tu propia implementación
                        // Puedes mostrar una alerta o navegar a la siguiente pantalla
                      },
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              8), // Personaliza el radio de borde si es necesario
                        ),
                        side: const BorderSide(
                          color: Colors
                              .transparent, // Establece el color del borde como transparente
                          width: 0, // Establece el ancho del borde en 0
                        ),
                      ),
                      child: Image.asset(
                        'assets/facebook_icon.png',
                        width: 40,
                        height: 40,
                      ),
                    ),
                    const SizedBox(width: 16),
                    // Botón visual de inicio de sesión con Google
                    OutlinedButton(
                      onPressed: () {
                        // Lógica para iniciar sesión con Google
                        // Aquí puedes agregar tu propia implementación
                        // Puedes mostrar una alerta o navegar a la siguiente pantalla
                      },
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              8), // Personaliza el radio de borde si es necesario
                        ),
                        side: const BorderSide(
                          color: Colors
                              .transparent, // Establece el color del borde como transparente
                          width: 0, // Establece el ancho del borde en 0
                        ),
                      ),
                      child: Image.asset(
                        'assets/google_icon.png',
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
