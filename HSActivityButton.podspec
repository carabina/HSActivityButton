Pod::Spec.new do |s|

  s.name         = "HSActivityButton"
  s.version      = "0.0.1"
  s.summary      = "Build-in activity indicator view button."
  s.license      = "MIT"
  s.homepage     = "https://github.com/hussaan-s/HSActivityButton"
# s.screenshots = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  s.author       = { "Hussaan S" => "hussaan.s@gmail.com" }
  s.require_arc   = true

  s.ios.deployment_target = "9.0"

  s.source_files  = "HSActivityButton/**/*.swift"

  s.framework  = "UIKit"

end
