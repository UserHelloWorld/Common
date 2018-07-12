//
//  AppData.h
//
//
//  Created by apple on 16/06/16.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "SHAppData.h"

typedef NSString *UserDefaultName;

static UserDefaultName const groupName     = @"groupName"; //!< 组
static UserDefaultName const numberLED     = @"numberLED";
static UserDefaultName const selectedRow   = @"selectedRow";
static UserDefaultName const sequenceNum   = @"sequenceNum";

@implementation SHAppData

+ (NSUserDefaults *)defaultUser {
    return [NSUserDefaults standardUserDefaults];
}

+ (void)synchronize {
    [[self defaultUser] synchronize];
}

+ (NSArray *)getGroupNameArray
{
    return [[self defaultUser] objectForKey:groupName];
}

+ (void)saveGroupNameArray:(NSArray *)array
{
    [[self defaultUser] setObject:array forKey:groupName];
    [self synchronize];
}

+ (void)saveSequenceNum:(int)num {
    [[self defaultUser] setInteger:num forKey:sequenceNum];
    [self synchronize];
}

+ (int)getSequenceNum {
    return (int)[[self defaultUser] integerForKey:sequenceNum];
}

+ (void)saveNumberLED:(CGFloat)num {
    [[self defaultUser] setFloat:num forKey:numberLED];
    [self synchronize];
}

+ (CGFloat)getNumberLED {
    return [[self defaultUser] floatForKey:numberLED];
}

+ (void)saveModeSelectedRow:(int)row {
    [[self defaultUser] setInteger:row forKey:selectedRow];
    [self synchronize];
}

+ (int)getModeSelectedRow {
    return (int)[[self defaultUser] integerForKey:selectedRow];
    
}

+ (void)clearData {
    NSString *appDomain = [[NSBundle mainBundle] bundleIdentifier];
    [[NSUserDefaults standardUserDefaults] removePersistentDomainForName:appDomain];
}

@end
