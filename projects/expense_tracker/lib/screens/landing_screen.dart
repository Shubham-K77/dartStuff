//Imports:
import 'package:expense_tracker/database/finance_db.dart';
import 'package:expense_tracker/model/finance_model.dart';
import 'package:expense_tracker/widgets/finance_form.dart';
import 'package:expense_tracker/widgets/update_finance_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

//Class:
class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});
  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

//Widget
class _LandingScreenState extends State<LandingScreen> {
  //State Variables
  Future<List<Finance>>? futureFinances;
  final financeDataBase = financeDB();

  //Init State: Like, UseEffect Fetch In Initial Mount
  @override
  void initState() {
    super.initState();
    fetchFinances();
  }

  //Fetch-Finances Method
  void fetchFinances() {
    setState(() {
      futureFinances = financeDataBase.fetchAll();
    });
  }

  //Builder
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.indigo,
        title: Text(
          "Mudra Expense Tracker",
          style: GoogleFonts.inter(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder:
                (context) => FinanceForm(
                  onSubmit: (title, desc, createdAt, amount, type) async {
                    await financeDataBase.create(
                      title: title,
                      desc: desc,
                      createdAt: createdAt,
                      amount: amount,
                      type: type,
                    );
                    if (!mounted) return;
                    fetchFinances();
                    Navigator.of(context).pop();
                  },
                ),
          );
        },
        backgroundColor: Colors.indigo,
        child: const Icon(Icons.add, color: Colors.white),
      ),
      body: FutureBuilder<List<Finance>>(
        future: futureFinances,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
              child: Text(
                'Error: ${snapshot.error}',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.red,
                ),
              ),
            );
          } else {
            final finances = snapshot.data ?? [];
            return finances.isEmpty
                ? Center(
                  child: Text(
                    'No Finances...',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                )
                : ListView.builder(
                  itemCount: finances.length,
                  itemBuilder: (context, index) {
                    final item = finances[index];
                    return ListTile(
                      title: Text(
                        item.title,
                        style: TextStyle(
                          color:
                              item.type == finance_listed.Income
                                  ? Colors.green
                                  : Colors.red,
                        ),
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(4),
                            child: Text(
                              DateFormat('yyyy-MM-dd').format(item.createdAt),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(4),
                            child: Text(
                              "RS ${item.amount.toStringAsFixed(2)}",
                              style: GoogleFonts.inter(
                                fontSize: 12,
                                color:
                                    item.type == finance_listed.Income
                                        ? Colors.green
                                        : Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                      trailing: IconButton(
                        onPressed: () async {
                          await financeDataBase.deleteFinance(id: item.id);
                          fetchFinances();
                        },
                        icon: const Icon(Icons.delete, color: Colors.redAccent),
                      ),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder:
                              (context) => FinanceUpdateForm(
                                onSubmit: (id, amount, type) async {
                                  await financeDataBase.updatedFinance(
                                    id: id,
                                    type: type,
                                    amount: amount,
                                  );
                                  fetchFinances();
                                  if (!mounted) return;
                                  Navigator.of(context).pop();
                                },
                                data: item,
                              ),
                        );
                      },
                    );
                  },
                );
          }
        },
      ),
    );
  }
}
