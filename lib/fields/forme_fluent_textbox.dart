import 'dart:ui';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:forme/forme.dart';

class FormeFluentTextBox extends FormeField<String> {
  FormeFluentTextBox({
    super.key,
    super.name,
    super.initialValue = '',
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
    this.autocorrect = true,
    this.autofillHints,
    this.autofocus = false,
    this.clipBehavior = Clip.hardEdge,
    this.contextMenuBuilder = _defaultContextMenuBuilder,
    this.controller,
    this.cursorColor,
    this.cursorHeight,
    this.cursorRadius = const Radius.circular(2.0),
    this.cursorWidth = 1,
    this.decoration,
    this.dragStartBehavior = DragStartBehavior.start,
    this.enableIMEPersonalizedLearning = true,
    this.enableInteractiveSelection,
    this.enableSuggestions = true,
    this.scribbleEnabled = true,
    this.expands = false,
    this.foregroundDecoration,
    this.highlightColor,
    this.inputFormatters,
    this.keyboardAppearance,
    this.keyboardType,
    this.maxLength,
    this.maxLengthEnforcement,
    this.maxLines = 1,
    this.minLines,
    this.obscureText = false,
    this.obscuringCharacter = '•',
    this.onEditingComplete,
    this.onSubmitted,
    this.onTap,
    this.onTapOutside,
    this.padding = kTextBoxPadding,
    this.placeholder,
    this.placeholderStyle,
    this.prefix,
    this.prefixMode = OverlayVisibilityMode.always,
    this.scrollController,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.restorationId,
    this.scrollPhysics,
    this.selectAllOnFocus = false,
    this.selectionControls,
    this.selectionHeightStyle = BoxHeightStyle.tight,
    this.selectionWidthStyle = BoxWidthStyle.tight,
    this.showCursor,
    this.smartDashesType,
    this.smartQuotesType,
    this.strutStyle,
    this.style,
    this.suffix,
    this.suffixMode = OverlayVisibilityMode.always,
    this.textAlign = TextAlign.start,
    this.textAlignVertical,
    this.textCapitalization = TextCapitalization.none,
    this.textDirection,
    this.textInputAction,
    this.unfocusedColor,
    this.updateValueWhenComposing = false,
    this.magnifierConfiguration,
    this.spellCheckConfiguration,
  }) : super.allFields(builder: (state) {
          return TextBox(
            controller:
                (state as FormeFluentTextBoxState).textEditingController,
            focusNode: state.focusNode,
            decoration: decoration,
            foregroundDecoration: foregroundDecoration,
            highlightColor: highlightColor,
            unfocusedColor: unfocusedColor,
            padding: padding,
            placeholder: placeholder,
            placeholderStyle: placeholderStyle,
            prefix: prefix,
            prefixMode: prefixMode,
            suffix: suffix,
            suffixMode: suffixMode,
            keyboardType: keyboardType,
            textInputAction: textInputAction,
            textCapitalization: textCapitalization,
            textAlign: textAlign,
            textAlignVertical: textAlignVertical,
            textDirection: textDirection,
            readOnly: state.readOnly,
            showCursor: showCursor,
            autofocus: autofocus,
            obscuringCharacter: obscuringCharacter,
            obscureText: obscureText,
            autocorrect: autocorrect,
            smartDashesType: smartDashesType,
            smartQuotesType: smartQuotesType,
            enableSuggestions: enableSuggestions,
            maxLines: maxLines,
            minLines: minLines,
            expands: expands,
            maxLength: maxLength,
            maxLengthEnforcement: updateValueWhenComposing
                ? maxLengthEnforcement
                : MaxLengthEnforcement.truncateAfterCompositionEnds,
            onEditingComplete: onEditingComplete,
            onSubmitted: onSubmitted,
            onTapOutside: onTapOutside,
            inputFormatters: inputFormatters,
            enabled: state.enabled,
            cursorWidth: cursorWidth,
            cursorHeight: cursorHeight,
            cursorRadius: cursorRadius,
            cursorColor: cursorColor,
            selectionHeightStyle: selectionHeightStyle,
            selectionWidthStyle: selectionWidthStyle,
            keyboardAppearance: keyboardAppearance,
            scrollPadding: scrollPadding,
            dragStartBehavior: dragStartBehavior,
            enableInteractiveSelection: enableInteractiveSelection,
            selectionControls: selectionControls,
            onTap: onTap,
            scrollController: scrollController,
            scrollPhysics: scrollPhysics,
            autofillHints: autofillHints,
            clipBehavior: clipBehavior,
            scribbleEnabled: scribbleEnabled,
            enableIMEPersonalizedLearning: enableIMEPersonalizedLearning,
            contextMenuBuilder: contextMenuBuilder,
            spellCheckConfiguration: spellCheckConfiguration,
            magnifierConfiguration: magnifierConfiguration,
          );
        });
  final TextEditingController? controller;
  final BoxDecoration? decoration;
  final BoxDecoration? foregroundDecoration;
  final Color? highlightColor;
  final Color? unfocusedColor;
  final EdgeInsetsGeometry padding;
  final String? placeholder;
  final TextStyle? placeholderStyle;
  final Widget? prefix;
  final OverlayVisibilityMode prefixMode;
  final Widget? suffix;
  final OverlayVisibilityMode suffixMode;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextCapitalization textCapitalization;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign textAlign;
  final TextAlignVertical? textAlignVertical;
  final TextDirection? textDirection;
  final bool? showCursor;
  final bool autofocus;
  final String obscuringCharacter;
  final bool obscureText;
  final bool autocorrect;
  final SmartDashesType? smartDashesType;
  final SmartQuotesType? smartQuotesType;
  final bool enableSuggestions;
  final int? maxLines;
  final int? minLines;
  final bool expands;
  final int? maxLength;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onSubmitted;
  final TapRegionCallback? onTapOutside;
  final List<TextInputFormatter>? inputFormatters;
  final double cursorWidth;
  final double? cursorHeight;
  final Radius cursorRadius;
  final Color? cursorColor;
  final BoxHeightStyle selectionHeightStyle;
  final BoxWidthStyle selectionWidthStyle;
  final Brightness? keyboardAppearance;
  final EdgeInsets scrollPadding;
  final bool? enableInteractiveSelection;
  final TextSelectionControls? selectionControls;
  final DragStartBehavior dragStartBehavior;
  final ScrollController? scrollController;
  final ScrollPhysics? scrollPhysics;
  final GestureTapCallback? onTap;
  final Iterable<String>? autofillHints;
  final Clip clipBehavior;
  final String? restorationId;
  final bool scribbleEnabled;
  final bool enableIMEPersonalizedLearning;
  final EditableTextContextMenuBuilder? contextMenuBuilder;
  final bool selectAllOnFocus;
  final bool updateValueWhenComposing;
  final TextMagnifierConfiguration? magnifierConfiguration;
  final SpellCheckConfiguration? spellCheckConfiguration;

  static Widget _defaultContextMenuBuilder(
      BuildContext context, EditableTextState editableTextState) {
    return AdaptiveTextSelectionToolbar.editableText(
      editableTextState: editableTextState,
    );
  }

  @override
  FormeFieldState<String> createState() => FormeFluentTextBoxState();
}

class FormeFluentTextBoxState extends FormeFieldState<String> {
  late final TextEditingController textEditingController;

  @override
  FormeFluentTextBox get widget => super.widget as FormeFluentTextBox;

  @override
  void initStatus() {
    super.initStatus();
    textEditingController = TextEditingController(text: initialValue);
    textEditingController.addListener(_handleControllerChanged);
  }

  @override
  void onStatusChanged(FormeFieldChangedStatus<String> status) {
    super.onStatusChanged(status);
    if (status.isValueChanged) {
      if (textEditingController.text != status.value) {
        textEditingController.text = status.value;
      }
    }
    if (status.isFocusChanged) {
      if (status.hasFocus && widget.selectAllOnFocus) {
        textEditingController.selection =
            _selection(0, textEditingController.text.length);
      }
    }
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  void _handleControllerChanged() {
    if (textEditingController.text != value &&
        (widget.updateValueWhenComposing ||
            !textEditingController.value.isComposingRangeValid)) {
      didChange(textEditingController.text);
    }
  }

  TextSelection _selection(int start, int end) {
    final int extendsOffset = end;
    final int baseOffset = start < 0
        ? 0
        : start > extendsOffset
            ? extendsOffset
            : start;
    return TextSelection(baseOffset: baseOffset, extentOffset: extendsOffset);
  }
}
