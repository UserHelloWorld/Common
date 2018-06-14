//
//
//  NSDictionary+SH.h
//
//
//  Created by apple on 16/06/16.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "NSDictionary+SH.h"

@implementation NSDictionary (SH)

+ (NSDictionary *)mainInfoDict
{
   return [[NSBundle mainBundle] infoDictionary];
}
@end
