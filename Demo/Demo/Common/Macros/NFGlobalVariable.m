//
//  NFGlobalVariable.m
//  Demo
//
//  Created by apple on 4/4/19.
//  Copyright © 2019 apple. All rights reserved.
//

#import "NFGlobalVariable.h"

//  1 正式   2 测试
#define serverTag 1

#if serverTag == 1     //

NSString *const serverHeadHost = @"https://www.baidu.com/";

#elif serverTag == 2   //

NSString *const serverHeadHost = @"2";

#elif serverTag == 3   //

NSString *const serverHeadHost = @"3";

#elif serverTag == 4  //

NSString *const serverHeadHost = @"4";

#endif


const NSString const *const myName = @"ds";

const NSString *update = @"123";

int const abcd = 1;

int const kHeightiPhoneX = 24; //!< 高度

int const iPhone5 = 320;


