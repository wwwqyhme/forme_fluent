import 'package:fluent_ui/fluent_ui.dart';
import 'package:forme/forme.dart';

class FormeFluentFormRowDecorator<T> extends FormeFieldDecorator<T> {
  const FormeFluentFormRowDecorator({
    this.textStyle,
    this.helper,
    this.padding,
    this.errorBuilder,
  });

  const FormeFluentFormRowDecorator.noPadding({
    this.helper,
    this.textStyle,
    this.errorBuilder,
  }) : padding = EdgeInsets.zero;

  final TextStyle? textStyle;
  final Widget Function(String errorText)? errorBuilder;
  final Widget? helper;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context, Widget child, FormeFieldState<T> field) {
    return FormRow(
      error: field.errorText == null
          ? null
          : errorBuilder?.call(field.errorText!) ?? Text(field.errorText!),
      textStyle: textStyle,
      helper: helper,
      padding: padding ??
          const EdgeInsetsDirectional.fromSTEB(
            20.0,
            6.0,
            6.0,
            6.0,
          ),
      child: child,
    );
  }
}
