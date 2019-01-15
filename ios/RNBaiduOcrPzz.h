#if __has_include(<React/RCTBridgeModule.h>)
#import <React/RCTBridgeModule.h>
#else
#import "RCTBridgeModule.h"
#endif

#import <Foundation/Foundation.h>
#import <React/RCTLog.h>
#import <AipOcrSdk/AipOcrSdk.h>
#import <UIKit/UIKit.h>

@interface RNBaiduOcrPzz : NSObject <RCTBridgeModule>

@end
