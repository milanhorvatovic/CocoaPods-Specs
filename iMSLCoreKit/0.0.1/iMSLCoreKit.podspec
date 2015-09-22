Pod::Spec.new do |spec|

    spec.name                       = 'iMSLCoreKit'
    spec.version                    = '0.0.1'
    spec.homepage                   = 'https://www.google.com'
    spec.license                    = {
        :type => 'Copyright',
        :text => 'Copyright (C) 2014-2015 Milan Horvatovic. All Rights Reserved.'
    }
    spec.authors                    = {
        'Milan Horvatovic' => 'imsoft.labs@gmail.com'
    }
    spec.summary                    = 'CoreKit of basic functionality for iOS.'
    spec.source                     = {
        :git => 'https://github.com/milanhorvatovic/iMSLCoreKit.git',
        :tag => spec.version.to_s
    }
    spec.default_subspec            = 'Framework'

    spec.subspec 'Framework' do |ss|

        ss.vendored_frameworks          = 'iMSLCoreKit.framework'
#        ss.source_files                 = 'iMSLCoreKit.framework/Headers/*.h'
#        ss.public_header_files          = 'iMSLCoreKit.framework/Headers/*.h'
#        ss.public_header_files          = 'iMSLCoreKit.framework/Headers/*.h'
#        ss.private_header_files         = 'iMSLCoreKit.framework/PrivateHeaders/*.h'
        ss.header_dir                   = 'iMSLCoreKit'

    end

    spec.module_name                = 'iMSLCoreKit'
    spec.platform                   = :ios, "7.0"
    spec.ios.deployment_target      = "7.0"
    spec.requires_arc               = true

    spec.ios.framework              = 'UIKit', 'Foundation', 'CoreData'
    spec.ios.dependency             'UICKeyChainStore'
    spec.ios.dependency             'JRSwizzle'

end
