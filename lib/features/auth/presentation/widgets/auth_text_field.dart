import 'package:beltis_app/core/utils/colors.dart';
import 'package:flutter/material.dart';

enum LabelPosition {
  inside,
  upside,
}

class AuthTextField extends StatefulWidget {
  final String hint;
  final String labelText;
  final LabelPosition labelPosition;
  final ValueChanged<String> onChanged;
  final void Function()? onEditingComplete;
  final TextInputType keyboardType;
  final bool isPasswordField;
  final bool isRequiredField;
  final String? error;
  final bool showError;
  final bool hasError;
  final EdgeInsets padding;
  final Iterable<String>? autofillHints;

  const AuthTextField({
    super.key,
    this.hint = '',
    this.labelText = '',
    this.labelPosition = LabelPosition.inside,
    required this.onChanged,
    this.onEditingComplete,
    required this.keyboardType,
    this.isPasswordField = false,
    this.isRequiredField = false,
    this.error,
    this.showError = true,
    this.hasError = false,
    this.autofillHints,
    this.padding = const EdgeInsets.only(left: 16, right: 16),
  });

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  bool _obscureText = false;

  @override
  void initState() {
    _obscureText = widget.isPasswordField;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    InputBorder borderNone = InputBorder.none;

    BoxBorder inputBorder = Border.all(
      color: Colors.transparent,
    );

    BoxBorder inputBorderError = Border.all(
      color: TemaUtil.vermelhoErro,
    );

    String label = widget.isRequiredField ? '${widget.labelText}*' : widget.labelText;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.labelPosition == LabelPosition.upside
            ? Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  label,
                  style: TextStyle(
                    color: TemaUtil.cinza03,
                  ),
                ),
              )
            : SizedBox.shrink(),
        Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(15, 51, 51, 51),
            borderRadius: BorderRadius.circular(12.0),
            border: widget.error != null || widget.hasError ? inputBorderError : inputBorder,
          ),
          padding: widget.padding,
          child: TextFormField(
            keyboardType: widget.keyboardType,
            cursorColor: Theme.of(context).primaryColor,
            decoration: InputDecoration(
              suffixIcon: widget.isPasswordField
                  ? GestureDetector(
                      onTap: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      child: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                        color: TemaUtil.cinza01,
                      ),
                    )
                  : null,
              fillColor: Colors.white,
              labelText: widget.labelPosition == LabelPosition.inside ? label : null,
              labelStyle: TextStyle(
                color: widget.error != null || widget.hasError ? TemaUtil.vermelhoErro : TemaUtil.preto01,
                fontSize: 16,
              ),
              hintText: widget.isRequiredField ? '${widget.hint}*' : widget.hint,
              border: borderNone,
              disabledBorder: borderNone,
              enabledBorder: borderNone,
              errorBorder: borderNone,
              errorText: widget.showError ? widget.error : null,
              errorStyle: TextStyle(color: TemaUtil.vermelhoErro),
            ),
            autocorrect: false,
            textInputAction: TextInputAction.done,
            obscureText: _obscureText,
            maxLines: 1,
            onChanged: widget.onChanged,
            autofillHints: widget.autofillHints,
            onEditingComplete: widget.onEditingComplete,
          ),
        ),
      ],
    );
  }
}
