Pod::Spec.new do |spec|
    spec.name                       = 'iMSLCoreKit'
    spec.version                    = '0.0.1'
    spec.homepage                   = 'https://www.google.com'
    spec.license                    = {
        :type => 'Custom',
        :text => 'Copyright (C) 2015 Milan Horvatovic. All Rights Reserved.'
    }
    spec.authors                    = {
        'Milan Horvatovic' => 'imsoft.labs@gmail.com'
    }
    spec.summary                    = 'CoreKit of basic functionality for iOS.'
    spec.source                     = {
        :git => 'https://github.com/milanhorvatovic/iMSLCoreKit.git',
        :tag => spec.version.to_s
    }
    spec.default_subspec            = 'Dynamic'

    spec.subspec 'Dynamic' do |ss|
        ss.vendored_frameworks        = 'Dynamic/iMSLCoreKit.framework'
        ss.source_files               = 'Dynamic/iMSLCoreKit.framework/Headers/*.h'
        ss.public_header_files        = 'Dynamic/iMSLCoreKit.framework/Headers/*.h'
        ss.private_header_files       = 'Dynamic/iMSLCoreKit.framework/PrivateHeaders/*.h'

        ss.ios.deployment_target      = "8.0"
    end

    spec.subspec 'Static' do |ss|
        ss.vendored_libraries           = 'Static/Library/libiMSLCoreKit.a'
        ss.source_files                 = 'Static/Library/Headers/*.h'
        ss.public_header_files          = 'Static/Library/Headers/*.h'
#        ss.private_header_files         = 'Static/Library/PrivateHeaders/*.h'

        ss.ios.deployment_target        = "7.0"
    end

    spec.subspec 'StaticFramework' do |ss|
        ss.vendored_frameworks          = 'Static/Framework/iMSLCoreKit.framework'
        ss.source_files                 = [
            'Static/Framework/iMSLCoreKit.framework/Versions/A/Headers/*.h'
#            , 'Static/Framework/iMSLCoreKit.framework/Versions/A/PrivateHeaders/*.h'
        ]
        ss.public_header_files          = 'Static/Framework/iMSLCoreKit.framework/Versions/A/Headers/*.h'
        ss.private_header_files         = 'Static/Framework/iMSLCoreKit.framework/Versions/A/PrivateHeaders/*.h'

        ss.ios.deployment_target        = "7.0"
    end

    spec.ios.framework              = 'UIKit', 'Foundation', 'CoreData'
    spec.platform                   = :ios, "9.0"
    spec.requires_arc               = true
    spec.ios.dependency             'UICKeyChainStore'
    spec.ios.dependency             'JRSwizzle'
    spec.module_name                = 'iMSLCoreKit'
end
