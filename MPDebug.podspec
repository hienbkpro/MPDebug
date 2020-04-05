Pod::Spec.new do |s|
  s.name             = 'MPDebug'
  s.version          = '0.0.7'
  s.summary          = 'A Debug Tools for iOS'

  s.description      = <<-DESC
A Debug Tools for iOS
                       DESC

  s.homepage         = 'https://github.com/manhpham90vn/MPDebug'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'manhpham90vn' => 'manhpham90vn@icloud.com' }
  s.source           = { :git => 'https://github.com/manhpham90vn/MPDebug.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.source_files = 'MPDebug/Sources/*'
  s.public_header_files = 'MPDebug/Source/MPDebug-Header.h'
  s.swift_version = '5.0'
end
