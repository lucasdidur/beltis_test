import 'package:beltis_app/core/domain/failures/failure_codegen.dart';
import 'package:beltis_app/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';
// import 'package:beltis_app/l10n/l10n.dart';

mixin FailureMessageHandler {
  void handleFailure(BuildContext context, Failure failure) {
    // final l10n = context.l10n;
    failure.when(
      localFailure: (message) => context.displayFlash(message),
      serverFailure: (message) => context.displayFlash(message),
      noConnectionFailure: (message) => context.displayFlash(message),
    );
  }
}
