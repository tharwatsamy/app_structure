import 'package:app_structure/Features/home/presentatoin/views/widgets/view_name_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ViewName extends StatelessWidget {
  const ViewName({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ViewNameBody(),
    );
  }
}
