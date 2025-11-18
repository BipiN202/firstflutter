import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:myfirstapp/views/pages/submit_conform.dart';
import 'package:myfirstapp/widgets/navbar.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key, required this.title});
  final String title;

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitch = false;
  double sliderValue = 0;
  String? menuItem = 'e1';

 
  void _showFullScreenLottie(String assetPath) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => SizedBox.expand(
        child: Container(
          color: Colors.black54, 
          child: Center(
            child: GestureDetector(
              onTap: () => Navigator.pop(context), 
              child: Lottie.asset(
                assetPath,
                repeat: true,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Snackbar Button
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        duration: Duration(seconds: 5),
                        content: Text('This is a snackbar'),
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  },
                  child: const Text('Open Snackbar'),
                ),
                const SizedBox(height: 20),

                // Full-screen Lottie Button
                ElevatedButton(
                  onPressed: () {
                    _showFullScreenLottie('assets/lotties/Confeti.json');
                  },
                  child: const Text('Celebration'),
                ),
                const SizedBox(height: 20),

                // Divider
                const Divider(
                  color: Colors.teal,
                  thickness: 5.0,
                  indent: 50.0,
                  endIndent: 50.0,
                ),
                const SizedBox(height: 20),

                // Alert Dialog Button
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text("Alert"),
                        content: const Text("Alert content here"),
                        actions: [
                          FilledButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text("Close"),
                          ),
                        ],
                      ),
                    );
                  },
                  child: const Text('Open Dialog'),
                ),
                const SizedBox(height: 20),

                // Dropdown
                DropdownButton<String>(
                  value: menuItem,
                  items: const [
                    DropdownMenuItem(value: 'e1', child: Text("Element 1")),
                    DropdownMenuItem(value: 'e2', child: Text("Element 2")),
                    DropdownMenuItem(value: 'e3', child: Text("Element 3")),
                    DropdownMenuItem(value: 'e4', child: Text("Element 4")),
                  ],
                  onChanged: (String? value) {
                    setState(() {
                      menuItem = value;
                    });
                  },
                ),
                const SizedBox(height: 20),

                // TextField
                TextField(
                  controller: controller,
                  decoration: const InputDecoration(border: OutlineInputBorder()),
                  onEditingComplete: () => setState(() {}),
                ),
                const SizedBox(height: 10),
                Text(controller.text),
                const SizedBox(height: 20),

                // Checkbox
                CheckboxListTile.adaptive(
                  tristate: true,
                  title: const Text('World peace'),
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value;
                    });
                  },
                ),
                const SizedBox(height: 20),

                // Switch
                SwitchListTile.adaptive(
                  title: const Text('Do not click'),
                  value: isSwitch,
                  onChanged: (bool value) {
                    setState(() {
                      isSwitch = value;
                    });
                  },
                ),
                const SizedBox(height: 20),

                // Slider
                Slider(
                  max: 10.0,
                  divisions: 10,
                  value: sliderValue,
                  onChanged: (double value) {
                    setState(() {
                      sliderValue = value;
                    });
                  },
                ),
                const SizedBox(height: 20),

                // InkWell
                InkWell(
                  splashColor: Colors.red,
                  onTap: () {
                    print('Container clicked');
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.grey,
                    alignment: Alignment.center,
                    child: const Text("Tap me"),
                  ),
                ),
                const SizedBox(height: 20),

                // Submit Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SubmitConform(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Submit'),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const NavbarWidget(),
    );
  }
}
