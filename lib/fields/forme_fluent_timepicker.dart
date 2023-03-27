import 'package:fluent_ui/fluent_ui.dart';
import 'package:forme/forme.dart';

const kPickerContentPadding = EdgeInsetsDirectional.only(
  start: 8.0,
  top: 4.0,
  bottom: 4.0,
);

const double kPickerPopupHeight = kOneLineTileHeight * 10;

class FormeFluentTimePicker extends FormeField<DateTime?> {
  FormeFluentTimePicker({
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
    this.contentPadding = kPickerContentPadding,
    this.header,
    this.headerStyle,
    this.hourFormat = HourFormat.h,
    this.minuteIncrement = 1,
    this.onCancel,
    this.popupHeight = kPickerPopupHeight,
  }) : super.allFields(
          builder: (state) {
            return TimePicker(
              onCancel: onCancel,
              hourFormat: hourFormat,
              header: header,
              headerStyle: headerStyle,
              contentPadding: contentPadding,
              popupHeight: popupHeight,
              focusNode: state.focusNode,
              autofocus: autofocus,
              minuteIncrement: minuteIncrement,
              selected: state.value,
              onChanged: readOnly
                  ? null
                  : (value) {
                      state.didChange(value);
                      state.requestFocusOnUserInteraction();
                    },
            );
          },
        );

  final VoidCallback? onCancel;
  final HourFormat hourFormat;
  final String? header;
  final TextStyle? headerStyle;
  final EdgeInsetsGeometry contentPadding;
  final bool autofocus;
  final double popupHeight;
  final int minuteIncrement;
}
