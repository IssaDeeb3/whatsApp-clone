import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FloatingActionButtonModel {
  final String? title;
  final IconData icon;

  const FloatingActionButtonModel({this.title, required this.icon});

  static List<FloatingActionButtonModel> floatingActionButtons = [
    FloatingActionButtonModel(icon: Icons.chat),
    FloatingActionButtonModel(icon: CupertinoIcons.camera_fill),
    FloatingActionButtonModel.empty(),

    FloatingActionButtonModel(icon: Icons.call, title: 'Start a call'),
  ];

  FloatingActionButtonModel.empty() : title = null, icon = Icons.add;
}
