#
# Be sure to run `pod lib lint ObjcZombie.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "ObjcZombie"
  s.version          = "0.1.0"
  s.summary          = "A short description of ObjcZombie."
  s.description      = <<-DESC.gsub(/^\s*\|?/,'')
                       An optional longer description of ObjcZombie
                        you should complete description let user know what your pod do
                       | * Markdown format.
                       | * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "https://github.com/tony0x59/objc_zombie"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'BSD'
  s.author           = { "tony0x59" => "hanningkong@gmail.com" }
  s.source           = { :git => "https://github.com/tony0x59/objc_zombie.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '6.0'
  s.requires_arc = false
  s.public_header_files = 'Pod/Classes/**/*.h'
  s.source_files = 'Pod/Classes/**/*'

  # Uncomment following lines if ObjcZombie has some resource files.
  # s.resource_bundles = {
  #   'ObjcZombie' => ['Pod/Assets/*.png']
  # }

  # Uncomment following lines if ObjcZombie needs to link with some static libraries.
  # s.vendored_libraries = [
  #   'Pod/lib/a-static-library.a',
  # ]

  # Uncomment following lines if ObjcZombie depends on any system framework.
  # s.frameworks = 'UIKit', 'MapKit'

  # Uncomment following lines if ObjcZombie depends on any public or private pod.
  # s.dependency 'AFNetworking', '~> 2.5.4'
  # s.dependency 'JSONModel', '~> 1.1.0'
  # s.dependency 'libextobjc', '~> 0.4.1'
  # s.dependency 'ReactiveCocoa', '~> 2.5.0'
  # s.dependency 'ReactiveViewModel', '~> 0.3.0'

end
