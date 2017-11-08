Pod::Spec.new do |s|

  s.name         = "HSActivityButton"
  s.version      = "0.0.1"
  s.summary      = "Build-in activity indicator view button."
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.homepage     = "https://github.com/hussaan-s/HSActivityButton"
# s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  s.author       = { "Hussaan S" => "hussaan.s@gmail.com" }
  s.requires_arc = true
  s.source       = { :git => 'https://github.com/hussaan-s/HSActivityButton.git', :tag => s.version }

  s.ios.deployment_target = "9.0"

  s.source_files = "HSActivityButton/**/*.{swift,h}"

  s.framework    = "UIKit"

end
