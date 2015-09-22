Pod::Spec.new do |spec|

    spec.name                       = 'iMSLCoreKit-Static'
    spec.version                    = '0.0.3'
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

        ss.vendored_frameworks          = 'Static/Framework/iMSLCoreKit.framework'
        ss.source_files                 = 'Static/Framework/iMSLCoreKit.framework/Versions/A/Headers/*.h', 'Static/Framework/iMSLCoreKit.framework/Versions/A/PrivateHeaders/*.h'
#        ss.public_header_files          = 'Static/Framework/iMSLCoreKit.framework/Versions/A/Headers/*.h'
#        ss.private_header_files         = 'Static/Framework/iMSLCoreKit.framework/Versions/A/Headers/Private/*.h'
        ss.header_dir                   = 'iMSLCoreKit'

    end

    spec.subspec 'Library' do |ss|

        ss.vendored_libraries           = 'Static/Library/libiMSLCoreKit.a'
        ss.source_files                 = 'Static/Library/Headers/*.h', 'Static/Library/Headers/Private/*.h'
#        ss.public_header_files          = 'Static/Library/Headers/*.h'
#        ss.private_header_files         = 'Static/Library/Headers/Private/*.h'
        ss.xcconfig  =  {
            'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/iMSLCoreKit"',
            'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Headers/iMSLCoreKit"'
#                '"${PODS_ROOT}/Headers/Private/iMSLCoreKit-Static"'
        }
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