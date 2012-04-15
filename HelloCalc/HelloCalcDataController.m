//
//  HelloCalcDataController.m
//  HelloCalc
//
//  Created by Anton on 12/4/3.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "HelloCalcDataController.h"

#import "CalcResult.h"

@interface HelloCalcDataController ()

- (void)initializeDefaultDataList;
- (void)initializeDefaultBuffer;

@end

@implementation HelloCalcDataController

@synthesize resultsList = _resultsList;
@synthesize calcBuffer = _calcBuffer;

- (id)init {
    
    if (self = [super init]) {
        
        [self initializeDefaultDataList];
        
        [self initializeDefaultBuffer];
        
        return self;
        
    }
    
    return nil;
    
}

- (void)initializeDefaultDataList {
    
    NSMutableArray *answersList = [[NSMutableArray alloc] init];
    
    self.resultsList = answersList;
    
    [self addResult:0];
    
}

- (void)initializeDefaultBuffer {
    
    
    NSMutableString *emptyBuf = [[NSMutableString alloc] init];
    
    self.calcBuffer = emptyBuf;
        
}

- (NSUInteger)countOfList {
    
    return [self.resultsList count];
    
}

- (CalcResult *)objectInListAtIndex:(NSUInteger)theIndex {
    
    return [self.resultsList objectAtIndex:theIndex];
    
}

- (void)addToBuffer:(NSString *)toAdd {
    
    [self.calcBuffer appendString:toAdd];
    
    [self.calcBuffer appendString:@" "];
    
}

- (void)clearBuf {
    
    [self.calcBuffer setString:@""];
    
}

- (void)addResult:(double)theResult {
    
    CalcResult *rslt = [[CalcResult alloc] initWithValue:theResult];
    
    [self.resultsList addObject:rslt];
    
}

@end
