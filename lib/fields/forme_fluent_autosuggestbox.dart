import 'dart:ui';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/services.dart';
import 'package:forme/forme.dart';

import 'forme_fluent_decorator.dart';

class FormeFluentAutoSuggestBox<T extends Object> extends FormeField<T?> {
  FormeFluentAutoSuggestBox({
    super.key,
    super.name,
    super.initialValue,
    super.asyncValidator,
    super.asyncValidatorDebounce,
    super.autovalidateMode,
    super.decorator = const FormeFluentFormRowDecorator(
      padding: EdgeInsets.zero,
    ),
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
    this.autofocus = false,
    this.clearButtonEnabled = true,
    this.controller,
    this.cursorColor,
    this.cursorHeight,
    this.cursorRadius = const Radius.circular(2.0),
    this.cursorWidth = 1.5,
    this.decoration,
    this.enableKeyboardControls = true,
    this.foregroundDecoration,
    this.highlightColor,
    this.inputFormatters,
    required this.items,
    this.keyboardAppearance,
    this.leadingIcon,
    this.maxPopupHeight = kAutoSuggestBoxPopupMaxHeight,
    this.noResultsFoundBuilder,
    this.onChanged,
    this.placeholder,
    this.placeholderStyle,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.selectionHeightStyle = BoxHeightStyle.tight,
    this.selectionWidthStyle = BoxWidthStyle.tight,
    this.showCursor,
    this.sorter,
    this.style,
    this.textInputAction,
    this.trailingIcon,
    this.unfocusedColor,
  }) : super.allFields(
          builder: (state) {
            return AutoSuggestBox<T>(
              items: items,
              controller: controller,
              onChanged: onChanged,
              noResultsFoundBuilder: noResultsFoundBuilder,
              sorter: sorter,
              leadingIcon: leadingIcon,
              trailingIcon: trailingIcon,
              clearButtonEnabled: clearButtonEnabled,
              placeholder: placeholder,
              placeholderStyle: placeholderStyle,
              style: style,
              decoration: decoration,
              foregroundDecoration: foregroundDecoration,
              highlightColor: highlightColor,
              unfocusedColor: unfocusedColor,
              cursorColor: cursorColor,
              cursorHeight: cursorHeight,
              cursorRadius: cursorRadius,
              cursorWidth: cursorWidth,
              showCursor: showCursor,
              keyboardAppearance: keyboardAppearance,
              scrollPadding: scrollPadding,
              selectionHeightStyle: selectionHeightStyle,
              selectionWidthStyle: selectionWidthStyle,
              textInputAction: textInputAction,
              focusNode: state.focusNode,
              autofocus: autofocus,
              enableKeyboardControls: enableKeyboardControls,
              enabled: state.enabled,
              inputFormatters: inputFormatters,
              maxPopupHeight: maxPopupHeight,
              onSelected: state.readOnly
                  ? null
                  : (value) {
                      state.didChange(value.value);
                      state.requestFocusOnUserInteraction();
                    },
            );
          },
        );

  final List<AutoSuggestBoxItem<T>> items;
  final TextEditingController? controller;
  final OnChangeAutoSuggestBox? onChanged;
  final WidgetBuilder? noResultsFoundBuilder;
  final AutoSuggestBoxSorter<T>? sorter;
  final Widget? leadingIcon;
  final Widget? trailingIcon;
  final bool clearButtonEnabled;
  final String? placeholder;
  final TextStyle? placeholderStyle;
  final TextStyle? style;
  final BoxDecoration? decoration;
  final BoxDecoration? foregroundDecoration;
  final Color? highlightColor;
  final Color? unfocusedColor;
  final double cursorWidth;
  final double? cursorHeight;
  final Radius cursorRadius;
  final Color? cursorColor;
  final bool? showCursor;
  final BoxHeightStyle selectionHeightStyle;
  final BoxWidthStyle selectionWidthStyle;
  final Brightness? keyboardAppearance;
  final EdgeInsets scrollPadding;
  final TextInputAction? textInputAction;
  final bool autofocus;
  final bool enableKeyboardControls;
  final List<TextInputFormatter>? inputFormatters;
  final double maxPopupHeight;
}
