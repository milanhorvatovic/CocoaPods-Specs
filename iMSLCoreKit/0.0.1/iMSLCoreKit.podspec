Pod::Spec.new do |spec|
spec.name                       = 'iMSLCoreKit'
spec.version                    = '0.0.1'
spec.homepage                   = 'https://www.google.com'
spec.license                    = { :type => 'Custom', :text => 'Copyright (C) 2015 Milan Horvatovic. All Rights Reserved.' }
spec.authors                    = { 'Milan Horvatovic' => 'imsoft.labs@gmail.com' }
spec.summary                    = 'CoreKit of basic functionality for iOS.'
#spec.source                     = { :http => 'https://www.dropbox.com/s/9vb1ienqrm4z08s/iMSLCoreKit.framework.zip?dl=1'}
spec.source                     = { :git => 'https://github.com/milanhorvatovic/iMSLCoreKit.git', :tag => "0.0.1" }
#spec.source_files               = 'iMSLCoreKit.framework/Headers/*.h'
#spec.public_header_files        = 'iMSLCoreKit.framework/Headers/*.h'
#spec.private_header_files       = 'iMSLCoreKit.framework/PrivateHeaders/*.h'
#spec.vendored_frameworks        = 'iMSLCoreKit.framework'
spec.ios.framework              = 'UIKit', 'Foundation', 'CoreData'
spec.platform                   = :ios, "7.1"
spec.ios.deployment_target      = "7.1"
spec.ios.dependency             'UICKeyChainStore'
spec.ios.dependency             'JRSwizzle'
spec.module_name                = 'iMSLCoreKit'
end
