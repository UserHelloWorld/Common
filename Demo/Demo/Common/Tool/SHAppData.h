//
//  AppData.h
//
//
//  Created by apple on 16/06/16.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface SHAppData : NSObject

+ (NSArray *)getGroupNameArray;

+ (void)saveGroupNameArray:(NSArray *)array;

+ (void)saveSequenceNum:(int)num;
+ (int)getSequenceNum;

+ (void)saveNumberLED:(CGFloat)num;
+ (CGFloat)getNumberLED;

+ (void)saveModeSelectedRow:(int)row;
+ (int)getModeSelectedRow;

@end
