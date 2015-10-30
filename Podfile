source 'https://github.com/CocoaPods/Specs.git'
source 'https://github.com/Reliable-Technology/ECBToolkit-iOS.git'

platform :ios, ‘8.0’
inhibit_all_warnings!

link_with ‘eComBid’, 'eComBidTests', 'eComBidUITests'

pod 'ECBToolkit-iOS’, :head

post_install do |installer|
  installer.pods_project.targets.each do |target|
    puts "#{target.name}"
  end
end

