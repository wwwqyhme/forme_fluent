import 'package:fluent_ui/fluent_ui.dart';
import 'package:forme/forme.dart';

class FormeFluentComboBox<T extends Object> extends FormeField<T?> {
  FormeFluentComboBox({
    super.key,
    super.name,
    super.initialValue,
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
    this.disabledPlaceholder,
    this.elevation = 8,
    this.focusColor,
    this.icon = const Icon(FluentIcons.chevron_down),
    this.iconDisabledColor,
    this.iconEnabledColor,
    this.iconSize = 10,
    this.isExpanded = false,
    this.items,
    this.onChanged,
    this.onTap,
    this.placeholder,
    this.popupColor,
    this.selectedItemBuilder,
    this.style,
    this.value,
  }) : super.allFields(builder: (state) {
          return ComboBox<T>(
            items: items,
            selectedItemBuilder: selectedItemBuilder,
            value: state.value,
            placeholder: placeholder,
            disabledPlaceholder: disabledPlaceholder,
            onTap: onTap,
            elevation: elevation,
            style: style,
            icon: icon,
            iconDisabledColor: iconDisabledColor,
            iconEnabledColor: iconEnabledColor,
            iconSize: iconSize,
            isExpanded: isExpanded,
            focusColor: focusColor,
            focusNode: state.focusNode,
            autofocus: autofocus,
            popupColor: popupColor,
            onChanged: state.readOnly
                ? null
                : (value) {
                    state.didChange(value);
                    state.requestFocusOnUserInteraction();
                  },
          );
        });

  final List<ComboBoxItem<T>>? items;
  final T? value;
  final Widget? placeholder;
  final Widget? disabledPlaceholder;
  final ValueChanged<T?>? onChanged;
  final VoidCallback? onTap;
  final ComboBoxBuilder? selectedItemBuilder;
  final int elevation;
  final TextStyle? style;
  final Widget icon;
  final Color? iconDisabledColor;
  final Color? iconEnabledColor;
  final double iconSize;
  final bool isExpanded;
  final Color? focusColor;
  final bool autofocus;
  final Color? popupColor;
}
