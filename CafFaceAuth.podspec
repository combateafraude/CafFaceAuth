#
# Be sure to run `pod lib lint CafFaceAuth.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CafFaceAuth'
  s.version = '6.4.0'
  s.summary          = 'CafFaceAuth'
  s.homepage         = 'https://github.com/combateafraude/iOS'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'services@caf.io' => 'services@caf.io' }
  s.source           = { :git => 'https://github.com/combateafraude/CafFaceAuth.git', :tag => s.version.to_s }
 
  
  s.swift_version = '5.3.2'
  s.ios.deployment_target = '13.0'
  s.ios.vendored_frameworks = 'Sources/CafFaceAuth.xcframework'
  s.dependency 'FaceLiveness', '7.2.1'
end
