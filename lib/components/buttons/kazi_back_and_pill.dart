import 'package:flutter/material.dart';
import 'package:kazi_design_system/kazi_design_system.dart';
import 'package:kazi_design_system/themes/themes.dart';

class KaziBackAndPill extends StatelessWidget {
  const KaziBackAndPill({
    super.key,
    this.pillText,
    this.onTapPill,
    this.text,
    this.foregroundColor,
    this.backgroundColor,
    this.onTapBack,
  });
  final VoidCallback? onTapBack;
  final VoidCallback? onTapPill;
  final String? text;
  final String? pillText;
  final Color? foregroundColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            KaziCircularButton(
              onTap: onTapBack,
              child: const Icon(Icons.chevron_left),
            ),
            KaziSpacings.horizontalSm,
            Visibility(
              visible: text != null,
              child: Text(
                text ?? '',
                style: KaziTextStyles.headlineMd,
              ),
            )
          ],
        ),
        Visibility(
          visible: pillText != null && pillText!.isNotEmpty,
          child: KaziPillButton(
            onTap: onTapPill,
            backgroundColor: backgroundColor ?? context.colorsScheme.onSurface,
            foregroundColor: foregroundColor ?? KaziColors.white,
            child: Text(pillText ?? ''),
          ),
        ),
      ],
    );
  }
}
