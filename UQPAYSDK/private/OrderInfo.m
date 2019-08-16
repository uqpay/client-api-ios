//
//  OrderInfo.m
//  UQPAY_SDK
//
//  Created by uqpay on 2019/8/14.
//  Copyright © 2019 优钱付. All rights reserved.
//

#import "OrderInfo.h"
@interface OrderInfo()

@property (nonatomic, retain) NSString *tn;
@property (nonatomic, assign) ScenesEnum scenes;
@end
@implementation OrderInfo

- (instancetype)initWithCode:(NSString *)code ScenesEnum:(ScenesEnum)scenes {
    self = [super init];
    if (self) {
        self.tn = code;
        self.scenes = scenes;
    }
    return self;
}

- (NSString *)getTn {
    return _tn;
}

- (ScenesEnum)getScenes {
    return _scenes;
}


@end
