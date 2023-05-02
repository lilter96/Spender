import 'dart:html';

import 'package:flutter/material.dart';

import '../currency_picker/currency_picker.dart';

class BudgetModalBottomSheetWidget extends StatefulWidget {
  const BudgetModalBottomSheetWidget({super.key});
  @override
  State<BudgetModalBottomSheetWidget> createState() => _BudgetModalBottomSheetWidgetState();
}

class _BudgetModalBottomSheetWidgetState extends State<BudgetModalBottomSheetWidget> {
  String _selectedCurrency = 'USD';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.grey, size: 35,),
          onPressed: () => Navigator.of(context).pop(),
        ), 
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Add New Budget'),
        centerTitle: true,
      ),
      body: Container(
        height: 500,
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              children: [
                const Icon(Icons.shopping_bag_outlined),
                const SizedBox(width: 10),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Budget name',
                      focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 24, 211, 155), width: 2),
                      ),
                    ),
                    cursorColor: const Color.fromARGB(255, 24, 211, 155),
                    validator: (String? value) {
                      if (value == null || value == '') {
                        return 'Enter budget name';
                      }
                      return null;
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.attach_money),
                const SizedBox(width: 10,),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Amount',
                      focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 24, 211, 155), width: 2),
                      ),
                    ),
                    cursorColor: const Color.fromARGB(255, 24, 211, 155),
                    validator: (String? value) {
                      if (value == null || value == '') {
                        return 'Enter amount';
                      }
                      return null;
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.green,
                  ),
                  child: SizedBox(
                    width: 95,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        disabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        ),
                        labelText: 'Currency',
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                        suffixIcon: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                      ),
                      initialValue: _selectedCurrency,
                      readOnly: false,
                      enabled: false,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  onPressed: () async {
                    final selectedCurrency = await showModalBottomSheet<String>(
                      context: context,
                      isScrollControlled: true,
                      builder: (BuildContext context) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.5,
                            child: CurrencyPicker(onSelectedCurrency: _handleSelectedCurrency,),
                          )
                        );
                      },
                    );    
                    
                    if (selectedCurrency != null) {
                      setState(() {
                        _selectedCurrency = selectedCurrency;
                      });
                      
                    }    
                  } 
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        color: Colors.white,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              const Color.fromARGB(255, 24, 211, 155),
            ),
          ),
          child: const Text(
            'Create a New Budget',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {},
        ),
      ),
    );
  }

  void _handleSelectedCurrency(String currency) {
    setState(() {
      _selectedCurrency = currency;
    });
  }
}