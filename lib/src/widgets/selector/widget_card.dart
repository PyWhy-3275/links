import 'package:flutter/material.dart';

class WidgetCard extends StatelessWidget {
  final String name;
  final String description;

  const WidgetCard({super.key, required this.name, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 50,
      shadowColor: Colors.black,
      color: Theme.of(context).primaryColor,
      child: SizedBox(
        width: 400,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                name,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                description,
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 100,
                child: ElevatedButton(
                  onPressed: () {
                    // TODO: pop with the json string
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green)),
                  child: const Icon(Icons.check),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
