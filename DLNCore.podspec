
Pod::Spec.new do |s|
  s.name         = "DLNCore"
  s.version      = "0.3.4"
  s.summary      = "It is a core part of the 'DLN' frameworks."
  s.description  = <<-DESC
                   It is a core part of the 'DLN' frameworks.
                   DESC
  s.homepage     = "http://EXAMPLE"
  s.license      = "MIT"
  s.author       = { "Daniel Lin" => "linzh4g@gmail.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "/Volumes/DLNFramework/Framework/DLNCore" }
  s.source_files = "DLNCore/**/*.{h,m}"
  s.requires_arc = true
  #s.xcconfig = { "CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES" => "YES" }
  #s.prefix_header_file = 'DLNCore/DLNCore-Prefix.pch'
end
