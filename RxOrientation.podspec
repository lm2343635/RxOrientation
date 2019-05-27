#
# Be sure to run `pod lib lint RxOrientation.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RxOrientation'
  s.version          = '0.1.4'
  s.summary          = 'Screen orientation notification extension for RxSwift.'

  s.description      = <<-DESC
RxOrientation is a screen orientation notification extension for RxSwift, which transforms the state of screen orientation notifications into RxSwift Observables.
                       DESC

  s.homepage         = 'https://github.com/lm2343635/RxOrientation'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lm2343635' => 'lm2343635@126.com' }
  s.source           = { :git => 'https://github.com/lm2343635/RxOrientation.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '8.0'
  s.source_files = 'RxOrientation/Classes/**/*'
  
  s.dependency 'RxSwift', '~> 5'
  s.dependency 'RxCocoa', '~> 5'
end
