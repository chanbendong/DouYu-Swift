# Uncomment this line to define a global platform for your project
platform :ios, '9.0'
# Comment this line if you're not using Swift and don't want to use dynamic frameworks
use_frameworks!
post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['SWIFT_VERSION'] = '3.0'
    end
  end
end
target 'DouYuDemo' do

pod 'Alamofire', '~> 4.0.1'
pod 'Kingfisher', '~> 3.1.3'

end
