import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firebase_app_distribution/firebase_app_distribution_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelFirebaseAppDistribution platform = MethodChannelFirebaseAppDistribution();
  const MethodChannel channel = MethodChannel('firebase_app_distribution');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return true;
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('isTesterSignedIn', () async {
    expect(await platform.isTesterSignedIn(), true);
  });
}
