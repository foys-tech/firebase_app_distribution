import 'package:flutter/foundation.dart' show visibleForTesting;
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'firebase_app_distribution_platform_interface.dart';

/// An implementation of [FirebaseAppDistributionPlatform] that uses method channels.
class MethodChannelFirebaseAppDistribution
    extends FirebaseAppDistributionPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('firebase_app_distribution');

  @override
  Future<void> updateIfNewReleaseAvailable() {
    return methodChannel.invokeMethod<void>('updateIfNewReleaseAvailable');
  }

  @override
  Future<bool> isNewReleaseAvailable() {
    return methodChannel
        .invokeMethod<bool>('isNewReleaseAvailable')
        .then((res) => res ?? false);
  }

  @override
  Future<bool> isTesterSignedIn() {
    return methodChannel
        .invokeMethod<bool>('isTesterSignedIn')
        .then((res) => res ?? false);
  }

  @override
  Future<void> signInTester() {
    return methodChannel.invokeMethod<void>('signInTester');
  }

  @override
  Future<void> signOutTester() {
    return methodChannel.invokeMethod<void>('signOutTester');
  }
}
