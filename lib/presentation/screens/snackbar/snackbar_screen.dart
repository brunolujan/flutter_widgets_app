import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('El pepe'),
      action: SnackBarAction(label: 'Mamalón!', onPressed: () {}),
      duration: const Duration(seconds: 1),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context){
    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) => AlertDialog(
        title: const Text('Are you sure?'),
        content: const Text('Aliqua labore laboris mollit excepteur. Et fugiat veniam tempor pariatur elit quis eu ea aute sit qui. Qui ut culpa cillum deserunt ea excepteur ad cupidatat tempor qui. Voluptate ipsum labore voluptate dolor. Mollit consequat proident sit aliquip nisi cupidatat eiusmod do ad quis culpa minim ad.'),
        actions: [
          TextButton(
            onPressed: () => context.pop(), 
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () => context.pop(), 
            child: const Text('Acept'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        titleTextStyle: TextStyle(color: colors.background, fontSize: 21),
        backgroundColor: colors.secondary,
        title: const Text('Snackbars and Dialog Screen'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  applicationVersion: 'V0.1',
                  applicationIcon: const Icon(Icons.info),
                  context: context,
                  children: [
                    const Text('In this dialog screen, you are allowed to see which and what kind of licenses I am using to develop this application')   
                  ]
                );
              }, 
              child: const Text('Used licenses')),
              
            FilledButton.tonal(
              onPressed: () => openDialog(context), 
              child: const Text('Show dialog'))
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Show Snackbar'),
        icon: const Icon(Icons.remove_red_eye_rounded),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}