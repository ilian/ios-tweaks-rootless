#import <Foundation/Foundation.h>
#import <objc/runtime.h>

// Google Mobile Ads SDK

%hook GADMobileAds

- (void)startWithCompletionHandler:(id)completionHandler {}

%end
