//
//  HelloCalcDataController.h
//  HelloCalc
//
//  Created by Anton on 12/4/3.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CalcResult;

@interface HelloCalcDataController : NSObject

@property (nonatomic, retain) NSMutableArray *resultsList;
@property (nonatomic, retain) NSMutableString *calcBuffer;

- (NSUInteger)countOfList;

- (CalcResult *)objectInListAtIndex:(NSUInteger)theIndex;

- (void)addToBuffer:(NSString *)toAdd;

- (void)clearBuf;

- (void)addResult:(double)theResult;

@end
