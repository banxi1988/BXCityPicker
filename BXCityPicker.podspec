#
# Be sure to run `pod lib lint BXCityPicker.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "BXCityPicker"
  s.version          = "1.0.0"
  s.summary          = "BXCityPicker is City Picker for China, support Swift 3"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
BXCityPicker is powerfull City Picker for China with Custom Province,City,Distinct Support
                       DESC

  s.homepage         = "https://github.com/banxi1988/BXCityPicker"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "banxi1988" => "banxi1988@gmail.com" }
  s.source           = { :git => "https://github.com/banxi1988/BXCityPicker.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '8.0'
  s.requires_arc = true
  s.resource_bundles = {
    'BXCityPicker' => ['Pod/Assets/*.json']
  }
  s.source_files = 'Pod/Classes/**/*'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit', 'CoreLocation'
 s.dependency 'PinAuto', '~> 2.0'
 s.dependency 'BXModel', "~> 1.1"
 s.dependency 'BXForm', "~> 1.0"
end
