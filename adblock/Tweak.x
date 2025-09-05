#import <Foundation/Foundation.h>
#import <objc/runtime.h>

// Google Mobile Ads SDK

%hook GADMobileAds

- (void)startWithCompletionHandler:(id)completionHandler {
    // Do nothing, no-op
}

%end

// AppLovin

%hook MAAdView
- (void)loadAd {
    // no-op
    return;
}
%end

