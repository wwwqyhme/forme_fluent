import 'package:fluent_ui/fluent_ui.dart';
import 'package:forme/forme.dart';

class FormeFluentToggleSwitch extends FormeField<bool> {
  FormeFluentToggleSwitch({
    super.key,
    super.name,
    super.initialValue = false,
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
    this.autofocus = false,
    this.content,
    this.semanticLabel,
    this.style,
    this.leadingContent = false,
    this.thumb,
    this.thumbBuilder,
  }) : super.allFields(
          builder: (state) {
            return ToggleSwitch(
                style: style,
                content: content,
                leadingContent: leadingContent,
                semanticLabel: semanticLabel,
                thumb: thumb,
                thumbBuilder: thumbBuilder,
                focusNode: state.focusNode,
                autofocus: autofocus,
                checked: state.value,
                onChanged: readOnly
                    ? null
                    : (v) {
                        state.didChange(v);
                        state.requestFocusOnUserInteraction();
                      });
          },
        );

  final ToggleSwitchThemeData? style;
  final Widget? content;
  final String? semanticLabel;
  final bool autofocus;
  final bool leadingContent;
  final Widget? thumb;
  final ToggleSwitchThumbBuilder? thumbBuilder;
}
