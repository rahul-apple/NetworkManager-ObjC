#
# Be sure to run `pod lib lint NetworkManager-ObjC.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "NetworkManager-ObjC"
  s.version          = "1.0.0"
  s.summary          = "A class Designed for Check Internet connection.Written for IOS - Objective-C code ."
  s.description      = <<-DESC

A class Designed for Check Internet connection.Written for iOS, Objective-C, Cocoa Touch, iPhone, iPad.
                       Usage:
                        NetworkManager *manager;
                        manager =[NetworkManager startManager];
                        manager.delegate=self;

                        *dont  forget   add  <NetworkManagerDelegate>

                        refer the example for More Details


                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "https://github.com/rahul-apple/NetworkManager-ObjC"
  # s.screenshots     = "http://imgur.com/KMjmhPDhttp://imgur.com/KMjmhPD"
  s.license          = 'MIT'
  s.author           = { "rahul-apple" => "rahulthazhuthala@gmail.com" }
  s.source           = { :git => "https://github.com/rahul-apple/NetworkManager-ObjC.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
#'NetworkManager-ObjC' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
