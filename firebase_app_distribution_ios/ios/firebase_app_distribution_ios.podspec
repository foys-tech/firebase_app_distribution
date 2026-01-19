Pod::Spec.new do |s|
  s.name             = 'firebase_app_distribution'
  s.version          = '0.0.1'
  s.summary          = 'An iOS implementation of the firebase_app_distribution plugin.'
  s.description      = <<-DESC
An iOS implementation of the firebase_app_distribution plugin.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'Firebase/Core'
  s.dependency 'Firebase/AppDistribution'

  s.platform = :ios, '13.0'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
