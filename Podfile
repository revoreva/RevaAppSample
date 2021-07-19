use_frameworks!
platform :ios, '10.0'

def mainFrameworks
  pod 'Alamofire', '5.2.1'
end

def testing_pods
  mainFrameworks
  pod 'Nimble', '9.0.1'
  pod 'OHHTTPStubs/Swift', '8.0.0'
  pod 'Quick', '2.1.0'
end

target 'RevaAppTests' do
  testing_pods
end

target 'RevaApp' do
  mainFrameworks
end

target 'RevaApp-STAGE' do
  mainFrameworks
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['SWIFT_VERSION'] = '5.2'
    end
  end
end