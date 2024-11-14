import 'package:flutter/material.dart';
import 'package:insuretech/app/resources/app_theme.dart';

class AppSubmitButton extends StatelessWidget {
  final String title;
  final Function()? onTap;
  final bool buttonEnabled;

  const AppSubmitButton({
    super.key,
    required this.title,
    this.onTap,
    this.buttonEnabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: buttonEnabled ? onTap : () {},
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            gradient: buttonEnabled
                ? AppTheme.gradientBackground
                : AppTheme.gradientBackgroundDisabled,
          ),
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: buttonEnabled ? Colors.white : AppTheme.grey01,
                ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
