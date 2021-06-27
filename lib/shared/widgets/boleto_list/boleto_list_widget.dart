import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';

import 'package:payflow/shared/models/boleto_model.dart';
import 'package:payflow/shared/widgets/boleto_list/boleto_list_controller.dart';
import 'package:payflow/shared/widgets/boleto_tile/boleto_tile_widget.dart';

class BoletoListWidget extends StatefulWidget {
  final BoletoListControler controller;

  const BoletoListWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  _BoletoListWidgetState createState() => _BoletoListWidgetState();
}

class _BoletoListWidgetState extends State<BoletoListWidget> {
  @override
  Widget build(BuildContext context) {
    return AnimatedCard(
      direction: AnimatedCardDirection.right,
      child: SingleChildScrollView(
        child: ValueListenableBuilder<List<BoletoModel>>(
          valueListenable: widget.controller.boletosNotifier,
          builder: (_, boletos, __) => Column(
            children: boletos
                .map(
                  (boleto) => BoletoTileWidget(data: boleto),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
