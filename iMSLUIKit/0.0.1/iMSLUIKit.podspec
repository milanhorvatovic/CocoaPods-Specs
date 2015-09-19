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
#spec.source                     = {
#    :http => 'https://www.dropbox.com/s/dziuhplb11au4dt/iMSLUIKit.framework.zip?dl=1'
#}
spec.source                     = {
    :git => 'https://github.com/milanhorvatovic/iMSLUIKit.git',
    :tag => '0.0.1'
}
#spec.ios.vendored_frameworks    = "iMSLUIKit.framework"
spec.ios.framework              = 'UIKit', 'Foundation', 'MapKit', 'QuartzCore'
spec.platform                   = :ios, "7.1"
spec.ios.deployment_target      = "7.1"
spec.requires_arc               = true
#spec.ios.dependency             = 'iMSLCoreKit', :podspec => 'iMSLCoreKit.podspec'
spec.dependency                 'iMSLCoreKit'
spec.module_name                = 'iMSLUIKit'
end
