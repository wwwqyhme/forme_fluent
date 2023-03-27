import 'package:fluent_ui/fluent_ui.dart';
import 'package:forme/forme.dart';

import 'forme_fluent_timepicker.dart';

class FormeFluentDatePicker extends FormeField<DateTime?> {
  FormeFluentDatePicker({
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
    this.onCancel,
    this.popupHeight = kPickerPopupHeight,
    this.endYear,
    this.fieldOrder,
    this.locale,
    this.showDay = true,
    this.showMonth = true,
    this.showYear = true,
    this.startYear,
  }) : super.allFields(
          builder: (state) {
            return DatePicker(
              showDay: showDay,
              showMonth: showMonth,
              showYear: showYear,
              startYear: startYear,
              endYear: endYear,
              locale: locale,
              fieldOrder: fieldOrder,
              onCancel: onCancel,
              header: header,
              headerStyle: headerStyle,
              contentPadding: contentPadding,
              popupHeight: popupHeight,
              focusNode: state.focusNode,
              autofocus: autofocus,
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

  final bool showMonth;
  final bool showDay;
  final bool showYear;
  final int? startYear;
  final int? endYear;
  final EdgeInsetsGeometry contentPadding;
  final bool autofocus;
  final double popupHeight;
  final Locale? locale;
  final List<DatePickerField>? fieldOrder;
  final VoidCallback? onCancel;
  final String? header;
  final TextStyle? headerStyle;
}
