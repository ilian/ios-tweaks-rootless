#import <Foundation/Foundation.h>
#import <objc/runtime.h>

%hook GADMobileAds

- (void)startWithCompletionHandler:(id)completionHandler {
    // Do nothing, no-op
}

%end
