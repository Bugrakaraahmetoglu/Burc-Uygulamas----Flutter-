
import 'package:burc/model/burc.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatefulWidget {
  final Burc secilenBurc;
  const BurcDetay({required this.secilenBurc,super.key});

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
      child: Column(
        children: [
          Text(widget.secilenBurc.burcAdi),
          Text(widget.secilenBurc.burcDetayi),
          Text(widget.secilenBurc.burcTarihi),
        ],
      ),
    ),
    );
    
  }
}