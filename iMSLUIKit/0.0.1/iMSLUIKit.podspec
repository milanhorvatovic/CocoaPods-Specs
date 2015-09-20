Pod::Spec.new do |spec|
    spec.name                       = 'iMSLUIKit'
    spec.version                    = '0.0.1'
    spec.homepage                   = 'https://www.google.com'
    spec.license                    = {
        :type => 'Custom',
        :text => 'Copyright (C) 2015 Milan Horvatovic. All Rights Reserved.'
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
        ss.source_files               = 'Dynamic/iMSLUIKit.framework/Headers/*.h'
        ss.public_header_files        = 'Dynamic/iMSLUIKit.framework/Headers/*.h'
        ss.private_header_files       = 'Dynamic/iMSLUIKit.framework/PrivateHeaders/*.h'
        ss.vendored_frameworks        = 'Dynamic/iMSLUIKit.framework'
        ss.dependency                 'iMSLCoreKit/Dynamic'

        ss.ios.deployment_target      = "8.0"
    end

    spec.subspec 'Static' do |ss|
        ss.source_files                 = 'Static/Library/Headers/*.h'
        ss.public_header_files          = 'Static/Library/Headers/*.h'
#        ss.private_header_files         = 'Static/Library/PrivateHeaders/*.h'
        ss.vendored_libraries           = 'Static/Library/libiMSLUIKit.a'
#        ss.dependency                 'iMSLCoreKit/Static'

        ss.ios.deployment_target        = "7.1"
    end

    spec.ios.framework              = 'UIKit', 'Foundation', 'MapKit', 'QuartzCore'
    spec.platform                   = :ios, "9.0"
    spec.requires_arc               = true
    #spec.ios.dependency             = 'iMSLCoreKit', :podspec => 'iMSLCoreKit.podspec'

    spec.module_name                = 'iMSLUIKit'
end
