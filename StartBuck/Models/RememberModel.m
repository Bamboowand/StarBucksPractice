//
//  RememberModel.m
//  StartBuck
//
//  Created by ChenWei on 2019/7/30.
//  Copyright © 2019 Jacob. All rights reserved.
//

#import "RememberModel.h"

@implementation RememberModel
static RememberModel *_instance = nil;
#pragma mark- Singleton Methods
+ (id) allocWithZone:(struct _NSZone *)zone {
    return [RememberModel shareInstance];
}

+ (instancetype)shareInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[super allocWithZone:NULL] init];
    });
    return _instance;
}

- (id)copyWithZone:(struct _NSZone *)zone {
    return [RememberModel shareInstance];
}
@end
