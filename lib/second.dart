import 'package:flutter/material.dart';
import 'package:name_app_provider_flutter/provider/name_provider.dart';
import 'package:provider/provider.dart';

class SecondScreen extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();

  SecondScreen({super.key, required String initialName}) {
    _nameController.text = initialName;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: TextField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Enter your name'),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<NameController>(context, listen: false)
                    .setName(_nameController.text, isUpdate: true);
                Navigator.pop(context);
              },
              child: const Text('Save Name'),
            ),
          ],
        ),
      ),
    );
  }
}
