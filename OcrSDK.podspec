Pod::Spec.new do |s|
   s.name         = "OcrSDK"
   s.version      = "1.0.8"
   s.platform     = :ios, "11.0"
   s.summary  = 'frameworks and bundle resources for youtu mobile hdr'
   s.homepage = 'https://github.com/Long-Cc/cloud_ocr_sdk.git'
   s.license  = 'freely'
   s.source = { 
      "http" => "https://ai-sdk-release-1254418846.cos.ap-guangzhou.myqcloud.com/ocr/1.0.8/sdk/Ocr_SDK_iOS.zip" 
   }
   s.static_framework = true
   s.compiler_flags = "-ObjC"
   s.default_subspec = 'Framework'
   s.author = {'tencent cloud' => 'v_clvchen@tencent.com'}
   s.license = "freely"
   s.subspec 'Framework' do |framework|
      framework.frameworks = 'Accelerate','CoreML'
      framework.vendored_frameworks = 'Frameworks/*.framework'
      s.pod_target_xcconfig = {'VALID_ARCHS' =>['armv7', 'arm64', 'x86_64', 'i386']}
   end
   s.subspec 'Resource' do |resource|
      resource.resources = 'Resources/*'
   end
end
