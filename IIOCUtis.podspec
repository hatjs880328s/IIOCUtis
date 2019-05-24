#
# Be sure to run `pod lib lint IIOCUtis.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IIOCUtis'
  s.version          = '0.8.5'
  s.summary          = '记录oc中一些基础工具'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
IIOCUtis
1.HUDProgress
                       DESC

  s.homepage         = 'https://github.com/hatjs880328s/IIOCUtis'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'hatjs880328s' => 'shanwzh@inspur.com' }
  s.source           = { :git => 'https://github.com/hatjs880328s/IIOCUtis.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.swift_version = '4.2'

  # s.source_files = 'IIOCUtis/Classes/*.{h,m,swift}'
  
  # s.resource_bundles = {
  #   'IIOCUtis' => ['IIOCUtis/Assets/*.png']
  # }
  # s.resource = 'IIOCUtis/Classes/*.png'
  s.pod_target_xcconfig = { "DEFINES_MODULE" => "YES" }


  s.subspec 'IIMJRefresh' do |ss|
      ss.source_files = 'IIOCUtis/Classes/IIMJRefresh/**/*.{h,m}'
      ss.resource = 'IIOCUtis/Classes/IIMJRefresh/MJRefresh.bundle'
  end

  s.subspec 'IIProgressHUD' do |ss|
      ss.source_files = 'IIOCUtis/Classes/IIProgressHUD/*.{h,m,swift}'
      ss.resource = 'IIOCUtis/Classes/IIProgressHUD/*.png'
  end

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'III18N'
  # s.dependency 'JGProgressHUD'
end
