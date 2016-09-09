
Pod::Spec.new do |s|
  s.name         = "DLNCore"
  s.version      = "0.3.5"
  s.summary      = "It is a core part of the 'DLN' frameworks."
  s.description  = <<-DESC
                   It is a core part of the 'DLN' frameworks.
                   DESC
  s.homepage     = "http://git.jzg01.com/pods/DLNCore"
  s.license      = "MIT"
  s.author       = { "Daniel Lin" => "linzhdk@gmail.com" }
  s.ios.deployment_target = '7.0'
  s.source       = { :git => "http://git.jzg01.com/pods/DLNCore.git", :tag => s.version.to_s }
  s.source_files = "DLNCore/**/*.{h,m}"
  s.requires_arc = true
  s.xcconfig = { "CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES" => "YES" }
  #s.prefix_header_file = 'DLNCore/DLNCore-Prefix.pch'
end
