import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/bottom_sheet/bottom_sheet_widget.dart';
import 'package:payflow/shared/widgets/set_label_buttons/set_label_buttons_widget.dart';

class BarCodeScannerPage extends StatelessWidget {
  const BarCodeScannerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomSheetWidget(
      title: "Não foi possível identificar um código de barras.",
      subtitle: "Tente escanear novamente ou digite o código do seu boleto.",
      primaryLabel: "Inserir código do boleto",
      primaryOnPressed: () {},
      secondaryLabel: "Adicionar da galeria",
      secondaryOnPressed: () {},
    );
    return Container(
      color: AppColors.primary,
      child: SafeArea(
        child: RotatedBox(
          quarterTurns: 1,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: Text(
                "Escaneie o código de barras do boleto",
                style: TextStyles.buttonBackground,
              ),
              centerTitle: true,
              leading: BackButton(
                color: AppColors.background,
              ),
              backwardsCompatibility: false,
            ),
            body: Column(
              children: [
                Expanded(
                  child: Container(color: Colors.black),
                ),
                Expanded(
                  flex: 2,
                  child: Container(color: Colors.transparent.withOpacity(0.9)),
                ),
                Expanded(
                  child: Container(color: Colors.black),
                ),
              ],
            ),
            bottomNavigationBar: SetLabelButtonsWidgets(
              primaryLabel: "Inserir código do boleto",
              primaryOnPressed: () {},
              secondaryLabel: "Adicionar da galeria",
              secondaryOnPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
