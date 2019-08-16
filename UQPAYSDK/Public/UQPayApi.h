//
//  UQPayApi.h
//  UQPAY_SDK
//
//  Created by uqpay on 2019/8/14.
//  Copyright © 2019 优钱付. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ScenesEnum.h"
#import "EnvEnum.h"
#import "OrderInfo.h"
//#import "../libs/UPPaymentControl.h"

NS_ASSUME_NONNULL_BEGIN

typedef void (^UQPaymentResultBlock)(NSString* code, NSDictionary* data);

@interface UQPayApi : NSObject

@property (nonatomic, assign) EnvEnum env;

- (instancetype)initWithModel: (EnvEnum) env;

//判断是否安装
+ (BOOL)checkWalletInstalled:(ScenesEnum)scenes;

+ (void)PaymentResult:(NSURL*)url completeBlock:(UQPaymentResultBlock)completionBlock;

- (void)pay:(OrderInfo *)orderInfo ViewController:(UIViewController *)viewController;

@end

NS_ASSUME_NONNULL_END
