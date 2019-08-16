//
//  OrderInfo.h
//  UQPAY_SDK
//
//  Created by uqpay on 2019/8/14.
//  Copyright © 2019 优钱付. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ScenesEnum.h"

NS_ASSUME_NONNULL_BEGIN

@interface OrderInfo : NSObject
- (ScenesEnum)getScenes;
- (NSString *)getTn;

- (instancetype)initWithCode:(NSString *)code ScenesEnum:(ScenesEnum)scenes;

@end

NS_ASSUME_NONNULL_END
