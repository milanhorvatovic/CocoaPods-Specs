Pod::Spec.new do |spec|

    spec.name                       = 'iMSLUIKit'
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
    spec.default_subspec            = 'Bitcode'

    spec.subspec 'Bitcode' do |ss|

        ss.vendored_frameworks          = 'iMSLUIKit.framework'
        ss.source_files                 = 'iMSLUIKit.framework/Headers/*.h'
        ss.public_header_files          = 'iMSLUIKit.framework/Headers/*.h'
        ss.private_header_files         = 'iMSLUIKit.framework/PrivateHeaders/*.h'
        ss.dependency                   'iMSLCoreKit', '0.0.1'

    end

    spec.subspec 'BitcodeNO' do |ss|

        ss.vendored_frameworks          = 'BitcodeNO/iMSLUIKit.framework'
        ss.source_files                 = 'BitcodeNO/iMSLUIKit.framework/Headers/*.h'
        ss.public_header_files          = 'BitcodeNO/iMSLUIKit.framework/Headers/*.h'
        ss.private_header_files         = 'BitcodeNO/iMSLUIKit.framework/PrivateHeaders/*.h'
        ss.dependency                   'iMSLCoreKit/BitcodeNO', '0.0.1'

    end

    spec.module_name                = 'iMSLUIKit'
    spec.platform                   = :ios, "7.0"
    spec.ios.deployment_target      = "7.0"
    spec.requires_arc               = true

    spec.ios.framework              = 'UIKit', 'Foundation', 'MapKit', 'QuartzCore'
    spec.ios.dependency             'SDWebImage'

end
