Pod::Spec.new do |spec|

    spec.name                       = 'iMSLUIKit-Dynamic'
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
    spec.default_subspec            = 'Dynamic'

    spec.subspec 'Dynamic' do |ss|

        ss.vendored_frameworks        = 'Dynamic/iMSLUIKit.framework'
        ss.source_files               = 'Dynamic/iMSLUIKit.framework/Headers/*.h'
        ss.public_header_files        = 'Dynamic/iMSLUIKit.framework/Headers/*.h'
        ss.private_header_files       = 'Dynamic/iMSLUIKit.framework/PrivateHeaders/*.h'

    end

    spec.module_name                = 'iMSLUIKit'
    spec.platform                   = :ios, "8.0"
    spec.ios.deployment_target      = "8.0"
    spec.requires_arc               = true

    spec.ios.framework              = 'UIKit', 'Foundation', 'MapKit', 'QuartzCore'
    spec.ios.dependency             'iMSLCoreKit-Dynamic'
    spec.ios.dependency             'SDWebImage'

end
