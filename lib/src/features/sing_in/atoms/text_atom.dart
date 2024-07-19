import 'package:flutter/material.dart';

/// MainText is a custom widget that displays text in the app.
/// use [TextAtom] for regular text and [MainText.title] for title text.
class TextAtom extends StatelessWidget {
  final String _content;
  final bool _isTitle;

  /// Creates a [TextAtom] widget.
  /// [content] is the text to be displayed and is required.
  /// [TextAtom] is used for regular text.
  ///
  /// Example:
  /// ```dart
  /// MainText(
  ///   content: 'Hello, World!',
  /// )
  /// ```
  const TextAtom({
    super.key,
    required String content,
  })  : _isTitle = false,
        _content = content;

  /// Creates a [MainText.title] widget.
  /// [content] is the text to be displayed and is required.
  /// [MainText.title] is used for title text.
  ///
  /// Example:
  /// ```dart
  /// MainText.title(
  ///    content: 'Hello, World!',
  /// )
  /// ```
  const TextAtom.title({
    super.key,
    required String content,
  })  : _isTitle = true,
        _content = content;

  @override
  Widget build(BuildContext context) {
    return Text(
      _content,
      style: _isTitle
          ? Theme.of(context).textTheme.titleLarge
          : Theme.of(context).textTheme.bodyMedium,
    );
  }
}
