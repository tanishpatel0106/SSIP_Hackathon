import 'package:flutter/material.dart';
import 'home_screen.dart';

class IdeaRegistration extends StatefulWidget {
  const IdeaRegistration({Key? key}) : super(key: key);

  @override
  State<IdeaRegistration> createState() => _IdeaRegistrationState();
}

class _IdeaRegistrationState extends State<IdeaRegistration> {
  String _teamMembers = '';
  int _membersCount = 1;
  final _formKey = GlobalKey<FormState>();
  final _ideaNameController = TextEditingController();
  final _ideaController = TextEditingController();
  List<String> ideaCategories = ["Fintech", "Edtech", "Agritech", "Web3.0"];
  String dropdownValue = "Fintech";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Idea Registration'),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  controller: _ideaNameController,
                  decoration:
                      const InputDecoration(hintText: 'Enter name of the Idea'),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: _ideaController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter your Idea'),
                  minLines: 1,
                  maxLines: 5,
                  keyboardType: TextInputType.multiline,
                ),
                const SizedBox(height: 10),
                DropdownButton<String>(
                  value: dropdownValue,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  underline: Container(
                    height: 2,
                    color: Colors.grey,
                  ),
                  onChanged: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                  items: ideaCategories
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: ListView.builder(
                    itemCount: _membersCount,
                    itemBuilder: (ctx, i) {
                      return TextFormField(
                        decoration:
                            const InputDecoration(hintText: 'Contributor: '),
                      );
                    },
                  ),
                ),
                Row(
                  children: [
                    FloatingActionButton.small(
                      onPressed: () {
                        setState(
                          () {
                            _membersCount++;
                          },
                        );
                      },
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.add),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    FloatingActionButton.small(
                      onPressed: () {
                        setState(
                          () {
                            if (_membersCount > 1) _membersCount--;
                          },
                        );
                      },
                      backgroundColor: Colors.red,
                      child: Icon(Icons.remove),
                    ),
                  ],
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                      print('Idea Name: ${_ideaNameController.text}');
                      print('Idea: ${_ideaController.text}');
                      // TODO: Add submission logic
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    }
                  },
                  child: const Text('Submit'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
