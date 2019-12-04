# UQPay SDK

### 说明

UQPay SDK can use token value open unionpay app

---

### 使用方式

---

- 通过 cocapods 中引入 SDK
  `pod uqpay_client_api`

- `import <uqpay_client_api/UQPAYSDK.h>`

* 在`AppleDelegate.m`文件中的

```objc
-(BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id>*)options{}
```

里面添加返回结果回调函数,处理回调结果:

```objc
+ (void)PaymentResult:(NSURL*)url completeBlock:(UQPaymentResultBlock)completionBlock{}
```

- 在需要的控制类中使用
  > 初始化

```objc
[[UQPayApi alloc]initWithModel:TEST];
```

> 判断是否安装银联 APP？(自选，可判断可不判断)

```objc
[UQPayApi checkWalletInstalled:UnionPay]
```

> 通过 token 打开银联

```objc
OrderInfo *orderInfo = [[OrderInfo alloc]initWithCode:@"585419236346001769500" ScenesEnum:UnionPay];
[self.api pay:orderInfo ViewController:self];
```

> 如果需要返回到 SDK 中需要在 项目->Target->Info->URL Types -> URL Schemes 中设置值为`UQPaySDK`
