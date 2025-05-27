//Imports
import 'package:expense_tracker/model/finance_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Stateful Wdiget To Record The Form Data
class FinanceUpdateForm extends StatefulWidget {
  final Future<void> Function(int id, double amount, String type) onSubmit;
  final Finance data;
  const FinanceUpdateForm({
    super.key,
    required this.onSubmit,
    required this.data,
  });
  @override
  State<FinanceUpdateForm> createState() => _financeUpdateFormState();
}

class _financeUpdateFormState extends State<FinanceUpdateForm> {
  //Key for the form
  final _formKey = GlobalKey<FormState>();
  final amount = TextEditingController();
  final type = TextEditingController();

  //When the widget is closed
  @override
  void dispose() {
    super.dispose();
    amount.dispose();
    type.dispose();
  }

  //When widget is mounted
  @override
  void initState() {
    super.initState();
    amount.text = widget.data.amount.toString();
    type.text = widget.data.type.name;
  }

  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Update The Existing Finance',
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                    widget.data.id,
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
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(4),
                      child: Text(
                        'Update',
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
