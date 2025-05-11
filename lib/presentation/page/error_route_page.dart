import 'package:ani_sleuth/presentation/navigation/destinations/ani_route_builder.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  final String? error;

  const ErrorPage({super.key, this.error});

  @override
  Widget build(BuildContext context) {
    final errorMessage = error ?? 'Unknown error occurred';

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.error_outline, color: Colors.red, size: 72),
              const SizedBox(height: 24),
              const Text(
                'Oops! Something went wrong.',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Text(
                errorMessage,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 32),
              ElevatedButton.icon(
                icon: Icon(
                  Icons.home,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                label: const Text('Go to Home'),
                onPressed: () => DashboardRoute().go(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
