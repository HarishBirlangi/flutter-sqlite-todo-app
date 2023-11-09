import 'package:flutter/material.dart';

class AddTodoScreen extends StatefulWidget {
  const AddTodoScreen({Key? key}) : super(key: key);

  @override
  State<AddTodoScreen> createState() => _AddTodoScreenState();
}

class _AddTodoScreenState extends State<AddTodoScreen> {
  static final List<String> _priorities = ['High', 'Low'];
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo Details'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: getTodoDetails(),
    );
  }

  getTodoDetails() {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          DecoratedBox(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(5)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 3,
                  ),
                ]),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: DropdownButton(
                underline: Container(),
                items: _priorities.map((dropDownItem) {
                  return DropdownMenuItem(
                    value: dropDownItem,
                    child: Text(
                      dropDownItem,
                    ),
                  );
                }).toList(),
                value: 'Low',
                onChanged: (value) {
                  debugPrint('Changed the value');
                },
                isExpanded: true,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          TextField(
            controller: titleController,
            onChanged: (value) {},
            decoration: const InputDecoration(
                hintText: 'Title',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)))),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: descriptionController,
            onChanged: (value) {},
            decoration: const InputDecoration(
                hintText: 'Description',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)))),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const Text(
                  'Save',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const Text(
                  'Delete',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
