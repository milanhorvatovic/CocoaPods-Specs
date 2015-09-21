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
    spec.default_subspec            = 'Library'

    spec.subspec 'Library' do |ss|

        ss.vendored_libraries           = 'Static/Library/libiMSLCoreKit.a'
        ss.source_files                 = 'Static/Library/Headers/*.h', 'Static/Library/Headers/Private/*.h'
        ss.public_header_files          = 'Static/Library/Headers/*.h'
        ss.private_header_files         = 'Static/Library/Headers/Private/*.h'
#        ss.private_header_files         = 'Static/Library/PrivateHeaders/*.h'
#        ss.xcconfig  =  {
#            'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/EstimoteSDK"',
#            'HEADER_SEARCH_PATHS' => [
#                '"${PODS_ROOT}/Headers/Public/iMSLCoreKit-Static"',
#                '"${PODS_ROOT}/Headers/Private/iMSLCoreKit-Static"'
#            ]
#        }

    end

    spec.module_name                = 'iMSLCoreKit'
    spec.platform                   = :ios, "7.0"
    spec.ios.deployment_target      = "7.0"
    spec.requires_arc               = true

    spec.ios.framework              = 'UIKit', 'Foundation', 'CoreData'
    spec.ios.dependency             'UICKeyChainStore'
    spec.ios.dependency             'JRSwizzle'


end
