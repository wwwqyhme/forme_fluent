import 'package:fluent_ui/fluent_ui.dart';
import 'package:forme/forme.dart';

class FormeFluentSlider extends FormeField<double> {
  FormeFluentSlider({
    super.key,
    super.name,
    super.initialValue = 0.0,
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
    this.label,
    this.max = 100,
    this.min = 0,
    this.style,
    this.divisions,
    this.mouseCursor,
    this.vertical = false,
    this.onChangeEnd,
    this.onChangeStart,
    this.onChanged,
  }) : super.allFields(
          builder: (genericState) {
            _FormeFluentSliderState state =
                genericState as _FormeFluentSliderState;
            return ValueListenableBuilder(
                valueListenable: state.notifier,
                builder: (context, value, child) {
                  return Slider(
                    max: max,
                    min: min,
                    style: style,
                    label: label,
                    focusNode: state.focusNode,
                    divisions: divisions,
                    autofocus: autofocus,
                    mouseCursor: mouseCursor ?? MouseCursor.defer,
                    vertical: vertical,
                    value: state.value,
                    onChangeStart: (v) {
                      state.focusNode.requestFocus();
                      onChangeStart?.call(v);
                    },
                    onChangeEnd: (v) {
                      state.didChange(v);
                      onChangeEnd?.call(v);
                    },
                    onChanged: readOnly
                        ? null
                        : (double value) {
                            state.updateValue(value);
                            onChanged?.call(value);
                          },
                  );
                });
          },
        );

  final double max;
  final double min;
  final String? label;
  final bool autofocus;
  final SliderThemeData? style;
  final int? divisions;
  final MouseCursor? mouseCursor;
  final bool vertical;
  final ValueChanged<double>? onChangeStart;
  final ValueChanged<double>? onChangeEnd;
  final ValueChanged<double>? onChanged;

  @override
  FormeFieldState<double> createState() => _FormeFluentSliderState();
}

class _FormeFluentSliderState extends FormeFieldState<double> {
  final ValueNotifier<double?> notifier = FormeMountedValueNotifier(null);

  @override
  FormeFluentSlider get widget => super.widget as FormeFluentSlider;

  void updateValue(double value) {
    notifier.value = value;
  }

  @override
  double get initialValue {
    final double defaultInitialValue = widget.initialValue;
    if (defaultInitialValue < widget.min) {
      return widget.min;
    }
    if (defaultInitialValue > widget.max) {
      return widget.max;
    }
    return defaultInitialValue;
  }

  @override
  double get value => notifier.value ?? super.value;

  @override
  void dispose() {
    notifier.dispose();
    super.dispose();
  }

  @override
  void onStatusChanged(FormeFieldChangedStatus<double> status) {
    super.onStatusChanged(status);
    if (status.isValueChanged) {
      notifier.value = null;
    }
  }
}
