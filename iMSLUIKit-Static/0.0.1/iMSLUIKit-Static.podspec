Pod::Spec.new do |spec|

    spec.name                       = 'iMSLUIKit-Static'
    spec.version                    = '0.0.1'
    spec.homepage                   = 'https://www.google.com'
    spec.license                    = {
        :type => 'Copyright',
        :text => 'Copyright (C) 2014-2015 Milan Horvatovic. All Rights Reserved.'
    }
    spec.authors                    = {
        'Milan Horvatovic' => 'imsoft.labs@gmail.com'
    }
    spec.summary                    = 'UIKit of basic functionality for iOS.'
    spec.source                     = {
        :git => 'https://github.com/milanhorvatovic/iMSLUIKit.git',
        :tag => '0.0.1'
    }
    spec.default_subspec            = 'Framework'

    spec.subspec 'Framework' do |ss|

        ss.vendored_frameworks          = 'Static/Framework/iMSLUIKit.framework'
        ss.source_files                 = 'Static/Framework/iMSLUIKit.framework/Versions/A/Headers/*.h', 'Static/Framework/iMSLUIKit.framework/Versions/A/PrivateHeaders/*.h'
#        ss.public_header_files          = 'Static/Framework/iMSLUIKit.framework/Versions/A/Headers/*.h'
#        ss.private_header_files         = 'Static/Framework/iMSLUIKit.framework/Versions/A/Headers/Private/*.h'
        ss.header_dir                   = 'iMSLUIKit'
        ss.dependency                   'iMSLCoreKit-Static/Framework'

    end

    spec.subspec 'Library' do |ss|

        ss.vendored_libraries           = 'Static/Library/libiMSLUIKit.a'
        ss.source_files                 = 'Static/Library/Headers/*.h', 'Static/Library/Headers/Private/*.h'
#        ss.public_header_files          = 'Static/Library/Headers/*.h'
#        ss.private_header_files         = 'Static/Library/PrivateHeaders/*.h'
        ss.xcconfig  =  {
            'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/iMSLUIKit"',
            'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Headers/iMSLUIKit"'
#                '"${PODS_ROOT}/Headers/Private/iMSLUIKit-Static"'
        }
        ss.header_dir                   = 'iMSLUIKit'
        ss.dependency                 'iMSLCoreKit-Static/Library'

    end

    spec.module_name                = 'iMSLUIKit'
    spec.platform                   = :ios, "7.0"
    spec.ios.deployment_target      = "7.0"
    spec.requires_arc               = true

    spec.ios.framework              = 'UIKit', 'Foundation', 'MapKit', 'QuartzCore'
    spec.ios.dependency             'SDWebImage'

end
