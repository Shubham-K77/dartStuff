//Imports
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Stateful Wdiget To Record The Form Data
class FinanceForm extends StatefulWidget {
  final Future<void> Function(
    String title,
    String desc,
    DateTime createdAt,
    double amount,
    String type,
  )
  onSubmit;
  const FinanceForm({super.key, required this.onSubmit});
  @override
  State<FinanceForm> createState() => _financeFormState();
}

class _financeFormState extends State<FinanceForm> {
  //Key for the form
  final _formKey = GlobalKey<FormState>();
  final title = TextEditingController();
  final desc = TextEditingController();
  final createdAt = TextEditingController();
  final amount = TextEditingController();
  final type = TextEditingController();

  Future<void> _pickDate() async {
    DateTime now = DateTime.now();
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null) {
      createdAt.text =
          "${pickedDate.year}-${pickedDate.month.toString().padLeft(2, '0')}-${pickedDate.day.toString().padLeft(2, '0')}";
    }
  }

  //When the widget is closed
  @override
  void dispose() {
    super.dispose();
    title.dispose();
    desc.dispose();
    createdAt.dispose();
    amount.dispose();
    type.dispose();
  }

  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Create New Finance',
        style: GoogleFonts.inter(
          fontSize: 17.25,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.indigo,
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min, // Prevent overflow
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: title,
              style: const TextStyle(
                color: Colors.white, // 👈 This changes the text the user types
                fontSize: 16,
              ),
              decoration: const InputDecoration(
                labelText: 'Title',
                labelStyle: TextStyle(color: Colors.white),
                suffixIcon: Icon(Icons.title, color: Colors.white),
              ),
            ),
            TextFormField(
              controller: desc,
              style: TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                labelText: 'Description',
                labelStyle: TextStyle(color: Colors.white),
                suffixIcon: Icon(Icons.textsms, color: Colors.white),
              ),
            ),
            TextFormField(
              controller: createdAt,
              style: TextStyle(color: Colors.white),
              onTap: _pickDate,
              decoration: const InputDecoration(
                labelText: 'Date',
                labelStyle: TextStyle(color: Colors.white),
                suffixIcon: Icon(Icons.calendar_today, color: Colors.white),
              ),
            ),
            TextFormField(
              controller: amount,
              keyboardType: TextInputType.number,
              style: TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                labelText: 'Amount',
                labelStyle: TextStyle(color: Colors.white),
                suffixIcon: Icon(Icons.money, color: Colors.white),
              ),
            ),
            TextFormField(
              controller: type,
              style: TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                labelText: 'Type',
                labelStyle: TextStyle(color: Colors.white),
                suffixIcon: Icon(Icons.type_specimen, color: Colors.white),
              ),
            ),
            GestureDetector(
              onTap: () async {
                if (_formKey.currentState!.validate()) {
                  await widget.onSubmit(
                    title.text,
                    desc.text,
                    DateTime.parse(createdAt.text),
                    double.parse(amount.text),
                    type.text,
                  );
                }
              },
              child: Container(
                margin: EdgeInsets.all(8),
                width: 500,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(4),
                      child: Text(
                        'Submit',
                        style: GoogleFonts.inter(
                          fontSize: 14.5,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Icon(Icons.send, color: Colors.white),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
