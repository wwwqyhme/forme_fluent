import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/gestures.dart';
import 'package:forme/forme.dart';

class FormeFluentRatingBar extends FormeField<double> {
  FormeFluentRatingBar({
    super.key,
    super.name,
    required super.initialValue,
    super.asyncValidator,
    super.asyncValidatorDebounce,
    super.autovalidateMode,
    super.decorator,
    super.enabled = true,
    super.focusNode,
    super.onInitialized,
    super.onSaved,
    super.onStatusChanged,
    super.order,
    super.quietlyValidate = false,
    super.readOnly = false,
    super.requestFocusOnUserInteraction = true,
    super.validationFilter,
    super.validator,
    this.amount = 5,
    this.animationCurve,
    this.animationDuration = Duration.zero,
    this.autofocus = false,
    this.dragStartBehavior = DragStartBehavior.down,
    this.icon,
    this.iconSize = 20,
    this.ratedIconColor,
    this.semanticLabel,
    this.starSpacing = 0,
    this.unratedIconColor,
  }) : super.allFields(builder: (state) {
          return RatingBar(
            rating: state.value,
            amount: amount,
            animationDuration: animationDuration,
            animationCurve: animationCurve,
            icon: icon,
            iconSize: iconSize,
            ratedIconColor: ratedIconColor,
            unratedIconColor: unratedIconColor,
            semanticLabel: semanticLabel,
            focusNode: state.focusNode,
            autofocus: autofocus,
            starSpacing: starSpacing,
            dragStartBehavior: dragStartBehavior,
            onChanged: state.readOnly
                ? null
                : (v) {
                    state.didChange(v);
                    state.requestFocusOnUserInteraction();
                  },
          );
        });

  final int amount;
  final Duration animationDuration;
  final Curve? animationCurve;
  final IconData? icon;
  final double iconSize;
  final double starSpacing;
  final Color? ratedIconColor;
  final Color? unratedIconColor;
  final String? semanticLabel;
  final bool autofocus;
  final DragStartBehavior dragStartBehavior;
}
