#import <Foundation/Foundation.h>
#import <objc/runtime.h>

// Google Mobile Ads SDK

%hook GADMobileAds

- (void)startWithCompletionHandler:(id)completionHandler {}

%end

// AppLovin

%hook ALSdk
- (void)initializeWithConfiguration:(id)config
                 completionHandler:(id)completionHandler {}
%end

%hook MAAdView
- (void)loadAd {}
%end

