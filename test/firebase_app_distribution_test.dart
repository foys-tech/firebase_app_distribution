import 'package:firebase_app_distribution/firebase_app_distribution.dart';
import 'package:firebase_app_distribution/firebase_app_distribution_method_channel.dart';
import 'package:firebase_app_distribution/firebase_app_distribution_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFirebaseAppDistributionPlatform
    with MockPlatformInterfaceMixin
    implements FirebaseAppDistributionPlatform {
  @override
  Future<bool> isNewReleaseAvailable() {
    return Future.value(true);
  }

  @override
  Future<bool> isTesterSignedIn() {
    return Future.value(true);
  }

  @override
  Future<void> signInTester() {
    return Future.value();
  }

  @override
  Future<void> signOutTester() {
    return Future.value();
  }

  @override
  Future<void> updateIfNewReleaseAvailable() {
    return Future.value();
  }
}

void main() {
  final FirebaseAppDistributionPlatform initialPlatform =
      FirebaseAppDistributionPlatform.instance;

  test('$MethodChannelFirebaseAppDistribution is the default instance', () {
    expect(
      initialPlatform,
      isInstanceOf<MethodChannelFirebaseAppDistribution>(),
    );
  });

  test('isTesterSignedIn', () async {
    FirebaseAppDistribution firebaseAppDistributionPlugin =
        FirebaseAppDistribution();
    MockFirebaseAppDistributionPlatform fakePlatform =
        MockFirebaseAppDistributionPlatform();
    FirebaseAppDistributionPlatform.instance = fakePlatform;

    expect(await firebaseAppDistributionPlugin.isTesterSignedIn(), true);
  });
}
