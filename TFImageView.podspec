Pod::Spec.new do |s|
s.name             = 'TFImageView'
s.version          = '0.1.0'
s.summary          = 'Single Imageview to Rule them all.'

s.description      = <<-DESC
This imageview used to set separate image for iPhoneX, iPhoneXS, XR, XS Max with single image asset!
DESC

s.homepage         = 'https://github.com/toseefkhilji/TFImageView'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Toseef Khilji' => 'toseefkhilji@gmail.com' }
s.source           = { :git => 'https://github.com/toseefkhilji/TFImageView.git', :tag => s.version.to_s }

s.ios.deployment_target = '10.0'
s.source_files = 'FantasticView/FantasticView.swift'

end
