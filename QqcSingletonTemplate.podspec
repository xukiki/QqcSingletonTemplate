Pod::Spec.new do |s|

  s.license      = "MIT"
  s.author       = { "qqc" => "20599378@qq.com" }
  s.platform     = :ios, "8.0"
  s.requires_arc  = true

  s.name         = "QqcSingletonTemplate"
  s.version      = "1.0.0"
  s.summary      = "QqcSingletonTemplate"
  s.homepage     = "https://github.com/xukiki/QqcSingletonTemplate"
  s.source       = { :git => "https://github.com/xukiki/QqcSingletonTemplate.git", :tag => "#{s.version}" }
  
  s.source_files  = ["QqcSingletonTemplate/*.{h,m}"]

end
