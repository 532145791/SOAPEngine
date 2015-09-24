Pod::Spec.new do |s|
  s.name 				= 'SOAPEngine'
  s.version 			= '1.22'
  s.summary 			= 'This generic SOAP client allows you to access web services using a your iOS and Mac OS X app.'
  s.license 			= { :type => 'Shareware', :file => 'LICENSE.txt' }
  s.authors 			= { 'Danilo Priore' => 'support@prioregroup.com' }
  s.homepage 			= 'https://github.com/priore/SOAPEngine'
  s.social_media_url 	= 'https://twitter.com/danilopriore'
  s.libraries 			= 'xml2'
  s.source 				= { git: 'https://github.com/priore/SOAPEngine.git', :tag => "v#{s.version}" }
  s.xcconfig			= { 'HEADER_SEARCH_PATHS' => "${PODS_ROOT}/#{s.name}/**" }
  s.frameworks			= 'Security', 'Accounts'
  
  s.ios.platform             = '7.1'
  s.ios.deployment_target    = '7.1'
  s.ios.preserve_paths       = 'SOAPEngine64.framework'
  s.ios.public_header_files  = 'SOAPEngine64.framework/Headers/*.h'
  s.ios.vendored_frameworks  = 'SOAPEngine64.framework'
  s.ios.xcconfig 			 = { 'HEADER_SEARCH_PATHS' => '/usr/include/libxml2' }
  
  s.osx.platform			 = '10.9'
  s.osx.deployment_target    = '10.9'
  s.osx.preserve_paths       = 'SOAPEngineOSX.framework'
  s.osx.public_header_files  = 'SOAPEngineOSX.framework/Versions/A/Headers/*.h'
  s.osx.vendored_frameworks  = 'SOAPEngineOSX.framework'
  s.osx.framework			 = 'AppKit'
end
