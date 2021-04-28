//
//  weak_import.swift
//  
//
//  Created by Kazuma Koze on 2021/03/09.
//

// ref. https://github.com/CocoaPods/Specs/blob/6c4ab4f0d57f70816f3e2cfb8476c02b8c1a6e76/Specs/5/9/a/Google-Mobile-Ads-SDK/8.2.0/Google-Mobile-Ads-SDK.podspec.json#L56-L61

#if canImport(AdSupport)
import AdSupport
#endif

#if canImport(JavaScriptCore)
import JavaScriptCore
#endif

#if canImport(SafariServices)
import SafariServices
#endif

#if canImport(WebKit)
import WebKit
#endif
