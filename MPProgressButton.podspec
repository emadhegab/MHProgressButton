#
#  Be sure to run `pod spec lint MPProgressButton.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "MPProgressButton"
  s.version      = "1.0.0"
  s.summary      = "See your progress on your UIButton 🙏."
  s.homepage     = "https://github.com/emadhegab/MHProgressButton"
  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  s.author             = { "Mohamed Emad Hegab" => "emadhegab@gmail.com"}
  s.social_media_url   = "http://twitter.com/MohamedHegab"
  s.platform     = :ios
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/emadhegab/MHProgressButton.git", :tag => "#{s.version}" }

  s.source_files  = "Classes", "Sources/*.swift"
 end
