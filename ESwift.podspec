
Pod::Spec.new do |s|
  s.name             = 'ESwift'
  s.version          = '0.1.0'
  s.summary          = 'Best iOS practics'
  s.homepage         = 'https://github.com/TerroKot/ESwift'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Egor Tereshonok' => 'egor.tereshonok@gmail.com' }
  s.source           = { :git => 'https://github.com/TerroKot/ESwift.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'

  s.source_files     = 'Source/**/*.swift'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.dependency 'GameTools'
end
