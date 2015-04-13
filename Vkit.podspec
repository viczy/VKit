Pod::Spec.new do |s|
  s.name             = "VKit"
  s.version          = "0.1.0"
  s.summary          = "A common kit"
  s.homepage         = "https://github.com/viczy/VKit"
  s.license     	 = 'MIT'
  s.author           = { "vic" => "viczy@ymail.com" }
  s.source           = { :git => "https://github.com/viczy/VKit.git", :tag => s.version.to_s }

  s.platform     = :ios, '8.0'

  s.source_files = 'Source/*'

  s.source_files = 'Source/*.{h,m}'
  s.public_header_files = 'Source/*.h'
  s.frameworks = ''
  s.requires_arc = true

end