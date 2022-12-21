import 'package:flutter/widgets.dart';

/// Widget that exposes its child's size via a [ValueNotifier].
///
/// Inspired by: https://stackoverflow.com/a/58004112/373138
class SizeTrackingWidget extends StatefulWidget {
  final Widget _child;
  final ValueNotifier<Size> _sizeValueNotifier;

  const SizeTrackingWidget({
    super.key,
    required final ValueNotifier<Size> sizeValueNotifier,
    required final Widget child,
  })  : _child = child,
        _sizeValueNotifier = sizeValueNotifier;

  @override
  State<StatefulWidget> createState() => _SizeTackingState();
}

class _SizeTackingState extends State<SizeTrackingWidget> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((final _) {
      widget._sizeValueNotifier.value =
          (context.findRenderObject() as RenderBox?)!.size;
    });
  }

  @override
  Widget build(final BuildContext context) => widget._child;
}
