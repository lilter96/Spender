import 'package:flutter/material.dart';
import 'package:flutter_material_pickers/helpers/show_scroll_picker.dart';

final List<String> currencies = [
  'USD',
  'EUR',
  'GBP',
  'JPY',
  'AUD',
  'CAD',
  'CHF',
  'CNY',
  'SEK',
  'NZD',
];

class CurrencyPicker extends StatefulWidget {
  const CurrencyPicker({super.key});

  @override
  State<CurrencyPicker> createState() => _CurrencyPickerState();
}

class _CurrencyPickerState extends State<CurrencyPicker> {
  String _selectedCurrency = 'USD';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Select currency'),
        actions: <Widget>[
          Container(
            width: 40,
            height: 40,
            margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
            decoration: const BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: const Icon(Icons.check),
              onPressed: () {},
              color: Colors.white,
            ),
          ),
        ],
      ),  
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       Text(
      //         'Selected Currency: $_selectedCurrency',
      //         style: const TextStyle(fontSize: 24),
      //       ),
      //       const SizedBox(height: 20),
      //       ElevatedButton(
      //         onPressed: () => _showCurrencyPicker(),
      //         child: const Text('Select Currency'),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }

// void _showCurrencyPicker() {
//     showMaterialScrollPicker(
//       context: context,
//       title: 'Choose Currency',
//       items: currencies,
//       selectedItem: _selectedCurrency,
//       onChanged: (value) => setState(() => _selectedCurrency = value),
//     );
//   }
}