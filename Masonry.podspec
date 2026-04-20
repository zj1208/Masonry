Pod::Spec.new do |s|
  s.name     = 'Masonry'
  s.version  = '1.1.1'
  s.license  = 'MIT'
  s.summary  = '利用 Auto Layout 和 NSLayoutConstraints 的强大功能，采用简洁、可链式操作且富有表现力的语法进行操作。fork自原作者Jonas Budelmann。'
  s.homepage = 'https://github.com/zj1208/Masonry.git'
  s.author   = { 'Jonas Budelmann' => 'jonas.budelmann@gmail.com' }
  s.social_media_url = "http://twitter.com/cloudkite"

  s.source   = { :git => 'https://github.com/zj1208/Masonry.git', :tag => "v#{s.version}" }

  s.description = %{
    Masonry 是一个轻量级的布局框架，它用更优美的语法封装了 AutoLayout。
    Masonry 有自己的布局领域特定语言（DSL），提供了一种链式的方式来描述您的 NSLayoutConstraints，从而生成更简洁、更易读的布局代码。
    Masonry 支持 iOS 和 Mac OSX。附加：原作者已不维护更新，在 Xcode15 之后，构建Masonry依赖时，会出现链接器无法找到'libarclite'的问题，需要把最低部署版本目标改为 iOS12 来解决。
  }

  pch_AF = <<-EOS
    #ifndef TARGET_OS_IOS
        #define TARGET_OS_IOS TARGET_OS_IPHONE
    #endif
    #ifndef TARGET_OS_TV
        #define TARGET_OS_TV 0
    #endif
  EOS

  s.source_files = 'Masonry/*.{h,m}'

  s.ios.frameworks = 'Foundation', 'UIKit'
  s.tvos.frameworks = 'Foundation', 'UIKit'
  s.osx.frameworks = 'Foundation', 'AppKit'

  s.ios.deployment_target = '12.0' # minimum SDK with autolayout
  s.osx.deployment_target = '10.14' # minimum SDK with autolayout
  s.tvos.deployment_target = '12.0' # minimum SDK with autolayout
  s.requires_arc = true
end
