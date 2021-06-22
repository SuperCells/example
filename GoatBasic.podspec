#
# Be sure to run `pod lib lint GoatBasic.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'GoatBasic'
  s.version          = '0.0.3'
  s.summary          = 'A common framework of GoatGames iOS SDK.'
  s.homepage         = 'https://developer.goatgames.com'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "A short description of GoatBasic. All other framework will pod it"
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'SuperCells' => 'lixiaojian@goatgames.com' }
  s.source           = { :git => 'https://github.com/SuperCells/example.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  # GoatGames Framework
  #需要包含的源文件,按照你的文件层级来
  s.source_files = 'GoatBasic/GoatBasic.framework/Headers/*.{h}'

  #你的SDK路径
  s.vendored_frameworks = ['GoatBasic/GoatBasic.framework']

  # 排除模拟器架构
  # 另外一种解决方法是用XCFramework
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }


  # s.source_files = 'GoatBasic/Classes/**/*'
  # s.resource_bundles = {
  #   'GoatBasic' => ['GoatBasic/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
