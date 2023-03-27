import 'package:fluent_ui/fluent_ui.dart';
import 'package:forme/forme.dart';

class FormeFluentCheckbox extends FormeField<bool> {
  FormeFluentCheckbox({
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
  }) : super.allFields(
          builder: (state) {
            return Checkbox(
              checked: state.value,
              onChanged: state.readOnly
                  ? null
                  : (v) {
                      state.didChange(v ?? false);
                      state.requestFocusOnUserInteraction();
                    },
              style: style,
              content: content,
              semanticLabel: semanticLabel,
              focusNode: state.focusNode,
              autofocus: autofocus,
            );
          },
        );

  final CheckboxThemeData? style;
  final Widget? content;
  final String? semanticLabel;
  final bool autofocus;
}
