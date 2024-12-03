import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum DeviceType { euro, riels, dong }

class DeviceConverter extends StatefulWidget {
  const DeviceConverter({super.key});

  @override
  State<DeviceConverter> createState() => _DeviceConverterState();
}

class _DeviceConverterState extends State<DeviceConverter> {
  DeviceType valueDropdown = DeviceType.riels;
  final _amountController = TextEditingController();
  double totalAmount = 0;
  final BoxDecoration textDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12),
  );

  @override
  void initState() {
    super.initState();
  }

  void changeMoneyUnit() {
    setState(() {
      final String amountText = _amountController.text;

      if (amountText.isEmpty) {
        totalAmount = 0;
      }

      final double amount = double.parse(amountText);

      switch (valueDropdown) {
        case DeviceType.euro:
          totalAmount = amount * 0.95;
          break;

        case DeviceType.riels:
          totalAmount = amount * 4100;
          break;

        case DeviceType.dong:
          totalAmount = amount * 25377;
          break;

        default:
          totalAmount = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Icon(
            Icons.money,
            size: 60,
            color: Colors.white,
          ),
          const Center(
            child: Text(
              "Converter",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
          const SizedBox(height: 50),
          const Text("Amount in dollars:"),
          const SizedBox(height: 10),
          TextField(
              controller: _amountController,
              onChanged: (value) => changeMoneyUnit(),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(
                  prefix: const Text('\$ '),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.white, width: 1.0),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Enter an amount in dollar',
                  hintStyle: const TextStyle(color: Colors.white)),
              style: const TextStyle(color: Colors.white)),
          const SizedBox(height: 30),
          const Text("Device: "),
          DropdownButton(
              value: valueDropdown,
              items: DeviceType.values.map((device) {
                return DropdownMenuItem(
                  value: device,
                  child: Text(device.name.toUpperCase()),
                );
              }).toList(),
              onChanged: (DeviceType? newDevice) {
                setState(() {
                  if (newDevice != null) {
                    valueDropdown = newDevice;
                  }
                });
                changeMoneyUnit();
              }),
          const SizedBox(height: 30),
          const Text("Amount in selected device:"),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: textDecoration,
            child: Text(totalAmount.toStringAsFixed(2)),
          )
        ],
      )),
    );
  }
}
