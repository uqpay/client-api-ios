//
//  UQPayApi.m
//  UQPAY_SDK
//
//  Created by uqpay on 2019/8/14.
//  Copyright © 2019 优钱付. All rights reserved.
//

#import "UQPayApi.h"
#import "../libs/UPPaymentControl.h"

@interface UQPayApi()

@property (nonatomic) NSString* tnModel;

@end

@implementation UQPayApi

- (instancetype)init {
    self = [super init];
    if (self) {
    }
    return self;
}

- (instancetype)initWithModel: (EnvEnum) env {
    self = [self init];
    if (self) {
        self.tnModel = [self GetEnvStatus:env];
    }
    return self;
}

+ (BOOL)checkWalletInstalled:(ScenesEnum)scenes {
    if (scenes == UnionPay) {
        return [[UPPaymentControl defaultControl]isPaymentAppInstalled];
    }
    return false;
}

- (void)pay:(OrderInfo *)orderInfo ViewController:(UIViewController *)viewController{
    NSString *tn = orderInfo.getTn;
    ScenesEnum scenes = orderInfo.getScenes;
    
    if (tn == nil || tn.length == 0) {
        return ;
    }
    
    if (scenes == UnionPay) {
        [[UPPaymentControl defaultControl]startPay:tn fromScheme:@"UQPaySDK" mode:self.tnModel viewController:viewController];
    }
}

+ (void)PaymentResult:(NSURL*)url completeBlock:(UQPaymentResultBlock)completionBlock {
    [[UPPaymentControl defaultControl] handlePaymentResult:url completeBlock:completionBlock];
}

- (NSString *)GetEnvStatus: (EnvEnum)status {
    switch (status) {
        case TEST:
            return @"01";
            break;
        case PRO:
            return @"00";
        case LOCAL:
            return @"01";
        default:
            return nil;
            break;
    }
}

@end
