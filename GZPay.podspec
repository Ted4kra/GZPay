#
#  Be sure to run `pod spec lint GZPay.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "GZPay"
  spec.version      = "0.1.1"
  spec.summary      = "果子Pay支付SDK。"
  spec.homepage     = "https://github.com/Ted4kra/GZPay"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "ted4kra" => "ted4kra@163.com" }
  spec.platform     = :ios, "10.0"
  spec.ios.deployment_target = "10.0"
  spec.source       = { :git => "https://github.com/Ted4kra/GZPay.git", :tag => spec.version }
  spec.ios.vendored_frameworks   = "Frameworks/*.framework"
  spec.swift_versions = "4.2"
  spec.dependency "AFNetworking"
  spec.dependency "PromiseKit", "~> 6.8"
end
