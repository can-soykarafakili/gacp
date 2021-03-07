Pod::Spec.new do |spec|

  spec.name         = "GACP"
  spec.version      = "0.1.0"
  spec.summary      = "Test iOS adapter for Google Mobile Ads"
  spec.description = <<-DESC
                     HyBid leverages first-look prebid technology to maximize yield for the publishers across
                     their current monetization suit. Access to the unique demand across different formats allows
                     publishers to immediately benefit with additional revenues on top of their current yield. Prebid technology
                     allows getting a competitive bid before executing your regular waterfall logic, and then
                     participate in the relevant auctions in the cascade.
                   DESC
  spec.homepage     = "https://github.com/pubnative/pubnative-hybid-ios-sdk"
  spec.license      = { :type => "MIT", :text => <<-LICENSE
    MIT License

    Copyright (c) 2021 PubNative GmbH

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.
      LICENSE
    }

  spec.author       = { "Can Soykarafakili" => "can.soykarafakili@pubnative.net" }
  spec.platform     = :ios, '10.0'
  spec.source       = { :git => "https://github.com/can-soykarafakili/gacp.git", :branch => "master" }

  spec.source_files = 'GACP/**/*.{swift,h,m}'
  spec.static_framework = true

  spec.pod_target_xcconfig      = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 arm64e armv7 armv7s', 'EXCLUDED_ARCHS[sdk=iphoneos*]' => 'i386 x86_64' }
  spec.user_target_xcconfig     = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 arm64e armv7 armv7s', 'EXCLUDED_ARCHS[sdk=iphoneos*]' => 'i386 x86_64' }

  spec.dependency 'HyBid', '2.4.1'
  spec.dependency 'Google-Mobile-Ads-SDK', '7.65.0'
end
