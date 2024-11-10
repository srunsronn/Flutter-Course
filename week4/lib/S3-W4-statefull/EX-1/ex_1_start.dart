import 'package:flutter/material.dart';
import 'package:week4/S3-W4-statefull/EX-1/selectbutton.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Custom buttons"),
        ),
        body: const Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              SelectButton(),
              SizedBox(height: 30),
              SelectButton(),
              SizedBox(height: 30),
              SelectButton(),
              SizedBox(height: 30),
              SelectButton(),
            ],
          ),
        ),
      ),
    ));
