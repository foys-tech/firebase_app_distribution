import 'firebase_app_distribution_platform_interface.dart';

class FirebaseAppDistribution {
  /// Checks if a new release is available and prompts the user to update
  /// if there is one. If user is not signed in as a tester, this method will
  /// invite the user to become a tester.
  Future<void> updateIfNewReleaseAvailable() {
    return FirebaseAppDistributionPlatform.instance
        .updateIfNewReleaseAvailable();
  }

  /// Checks if a new release is available.
  Future<bool> isNewReleaseAvailable() {
    return FirebaseAppDistributionPlatform.instance.isNewReleaseAvailable();
  }

  /// Checks if tester is signed in.
  Future<bool> isTesterSignedIn() {
    return FirebaseAppDistributionPlatform.instance.isTesterSignedIn();
  }

  /// Sign in a tester without automatically checking for update.
  Future<void> signInTester() {
    return FirebaseAppDistributionPlatform.instance.signInTester();
  }

  /// Sign out a tester without automatically checking for update.
  Future<void> signOutTester() {
    return FirebaseAppDistributionPlatform.instance.signOutTester();
  }
}
