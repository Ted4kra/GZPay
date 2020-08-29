//
//  GZPay.h
//  Manager
//
//  Created by 郭子龙 on 2020/8/26.
//  Copyright © 2020 吕VV. All rights reserved.
//

#import <Foundation/Foundation.h>
@class AnyPromise;

NS_ASSUME_NONNULL_BEGIN

@interface GZPayManager : NSObject

+ (AnyPromise *)payWithPayURLString:(NSString *)urlString;

@end

NS_ASSUME_NONNULL_END
