import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo de la aplicación
              Image.asset('assets/logo.png', width: 200, height: 200),
              const SizedBox(height: 16),
              const Text(
                'Inicia Sesión Ahora',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              // Formulario de inicio de sesión
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _usernameController,
                      decoration: const InputDecoration(
                        labelText: 'Usuario',
                      ),
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'Por favor, ingresa tu usuario';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Contraseña',
                      ),
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'Por favor, ingresa tu contraseña';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextButton(
                      onPressed: () {
                        // Lógica para olvidar contraseña
                        // Aquí puedes agregar tu propia implementación
                        // Puedes mostrar una alerta o navegar a la pantalla de recuperación de contraseña
                      },
                      child: const Text(
                        'Olvidé mi contraseña',
                        textAlign: TextAlign.right,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          // Lógica para iniciar sesión
                          // Aquí puedes agregar tu propia implementación
                          // Puedes mostrar una alerta o navegar a la siguiente pantalla
                        }
                      },
                      child: const Text('Iniciar sesión'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const Text('O'),
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
              const SizedBox(height: 40),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text('¿No tienes una cuenta?'),
                TextButton(
                  onPressed: () {
                    // Lógica para navegar a la pantalla de registro
                    // Aquí puedes agregar tu propia implementación
                    // Puedes mostrar una alerta o navegar a la siguiente pantalla
                  },
                  child: const Text('Regístrate'),
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
