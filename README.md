# GZPay
果子Pay

iOS端使用的framework。

# 集成方式

```
# 使用CDN方式
source 'https://cdn.cocoapods.org/'
# platform :ios, '9.0'

target 'YourAwesomeProj' do
# 必须使用framework
  use_frameworks!
  pod 'GZPay', '0.1.1'
end
```

## 最新版本是 $\color{#FF3030}{0.1.1}$

* 如果没有特殊情况，请尽量使用最新版本！

* 如果指定版本号后，安装的还是旧版本，请执行以下命令查看一下

    > pod trunk info GZPay

* 如果遇到

	> ld: could not reparse object file in bitcode bundle: 'Invalid bitcode version (Producer: '1200.0.22.7.0_0' Reader: '1103.0.32.62_0')', using libLTO version 'LLVM version 11.0.3, (clang-1103.0.32.62)' for architecture armv7
	> clang: error: linker command failed with exit code 1 (use -v to see invocation)
	
	就把Bitcode关了
	
# 更新内容

* 电信支付不支持小数

# 使用方式


当调用我方alipay_plug或wxpay_plug通道时，去调用本支付API，传入的参数是通过统一下单接口返回的pay_url链接（如：http://wg.guozipay.cn/api/gateway/oth/pay/20200826741327447 ）
	
* 调用支付API

```objective-c
#import <GZPay/GZPayManager.h>
#import <PromiseKit/PromiseKit.h>

...
[GZPayManager payWithPayURLString:url];
...
```

* 参数说明：
	* urlString： 传入统一下单接口返回的`pay_url` 		$\color{#FF3030}{必传}$
	
		
	
* 结果说明：

   该接口返回一个AnyPromise，成功返回一个支付用的URL，拿到URL直接跳转Safari即可拉起支付；失败返回错误

* 例子:


```objective-c
#import <GZPay/GZPayManager.h>

   .... 

		showLoading();
    [GZPayManager payWithPayURLString:urlString].then(^(NSString *jumpUrl){
     		dismissLoading();
        NSURL *url = [NSURL URLWithString:jumpUrl];
     		if (url && [UIApplication.sharedApplication canOpenURL:url]) {
            [UIApplication.sharedApplication openURL:url options:@{} completionHandler:^(BOOL success) {
             
            }];
     		}
    }).catch(^(NSError *error) {
     		dismissLoading();
        showTitle(error.localizedDescription, nil);
    });

```



# The newest version is 0.1.1

# Use 0.1.1 please.
# The 0.0.1 just support iOS 13 !!!

Use `pod trunk info GZPay` check the newest version.
