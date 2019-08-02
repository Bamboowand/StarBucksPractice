//
//  RememberModel.h
//  StartBuck
//
//  Created by ChenWei on 2019/7/30.
//  Copyright © 2019 Jacob. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RememberModel : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *reason;
@property (nonatomic, strong) NSString *lineIdString;

+ (instancetype)shareInstance;

@end

NS_ASSUME_NONNULL_END
