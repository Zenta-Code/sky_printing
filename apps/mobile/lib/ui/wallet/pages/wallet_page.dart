import 'package:flutter/material.dart';
import 'package:sky_printing_core/sky_printing_core.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return const Parent(
      child: Text('WalletPage'),
    );
  }
}
