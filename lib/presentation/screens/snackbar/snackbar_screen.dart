import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {

  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar( BuildContext context ) {

    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('Hello World'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {},)
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) => AlertDialog(
        title: const Text('Are you sure?'),
        content: const Text('Ea duis exercitation culpa aliquip sit exercitation dolore ea incididunt reprehenderit. Cupidatat duis nulla eiusmod nulla ex nostrud commodo fugiat laboris elit minim proident anim est. Sit commodo veniam laboris dolore. Ad aliqua minim adipisicing et eu ex laboris et duis nostrud. Ipsum ullamco velit consectetur deserunt aliquip sint veniam eu in elit.'),
        actions: [
          TextButton( onPressed: () => context.pop(), child: const Text('Cancel')),

          FilledButton( onPressed: () => context.pop(), child: const Text('Accept')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars and Dialogs'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Proident magna ex consectetur ullamco nulla aute aliquip. Laboris ipsum ex et minim commodo velit deserunt. Quis laboris aliqua ut reprehenderit aliqua consequat elit sit in amet eu et. Lorem culpa labore voluptate in sint officia dolor minim consequat deserunt. Proident laboris fugiat minim qui aute consequat laborum aliquip consequat nostrud duis sunt minim eu. Quis anim qui ad velit consequat aute eiusmod. Voluptate nostrud aute veniam do voluptate nisi sit pariatur esse consequat consequat.')
                  ]
                );
              },
              child: const Text('Licences used')),

            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Show dialog'))

          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Show Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}