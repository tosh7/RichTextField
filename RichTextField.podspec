Pod::Spec.new do |s|
    s.name                  = 'RichTextField'
    s.version               = '0.1.0'
    s.summary               = 'Variety of rich text fields'
    s.homepage              = "https://github.com/tosh7/#{s.name}"
    s.ios.deployment_target = '13.0'
    s.source_files          = 'RichTextField/*.swift'
    s.frameworks            = 'UIKit'
    s.source                = { :git => "https://github.com/tosh7/#{s.name}.git", :tag => "v#{s.version}" }
    s.license               = { :type => 'MIT', :file => 'LICENSE' }
    s.author                = { 'Satoshi Komatsu' => 'zlia.6.lj.425@gmail.com' }
    s.social_media_url      = 'https://twitter.com/tosh_3'
  end