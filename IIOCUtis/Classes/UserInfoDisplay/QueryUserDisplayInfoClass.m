//
//  QueryUserDisplayInfoClass.m
//  impcloud_dev
//
//  Created by 许阳 on 2019/3/26.
//  Copyright © 2019 Elliot. All rights reserved.
//

#import "QueryUserDisplayInfoClass.h"
#import "IMPUserModel.h"

@implementation QueryUserDisplayInfoClass

/*个人信息相关*/
//  获取个人信息
+(nullable UserInfoDisplayConfigModel *)queryUserDisplayInfo {
    //  UserInfoDisplayConfigModel初始化
    UserInfoDisplayConfigModel *dataSource = [[UserInfoDisplayConfigModel alloc] init];
    //  Name
    ShowUserDisplayModel *name = [[ShowUserDisplayModel alloc] initWithDictionary:@{@"value":[IMPUserModel activeInstance].userName, @"show":@YES}];
    dataSource.name = name;
    //  头像
    ShowUserDisplayModel *headUrl = [[ShowUserDisplayModel alloc] initWithDictionary:@{@"value":@"", @"show":@YES}];
    dataSource.headUrl = headUrl;
    //  EnterpriseName
    ShowUserDisplayModel *enterpriseName = [[ShowUserDisplayModel alloc] initWithDictionary:@{@"value":[IMPUserModel activeInstance].enterprise.name, @"show":@YES}];
    dataSource.enterpriseName = enterpriseName;
    return dataSource;
}

@end
