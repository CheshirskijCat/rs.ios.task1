//
//  OddNumbers.m
//  ios.stage-task1
//
//  Created by Alex Tsybulko on 4.05.21.
//

#import <Foundation/Foundation.h>
#import "OddNumbers.h"

@implementation OddNumbers

- (NSInteger)oddNumbers:(NSArray <NSNumber *> *)array {
//    NSMutableArray *result = [NSMutableArray <NSNumber *> array];
    NSInteger counter = 0;
    for (NSNumber *value in array){
        if ([value intValue] % 2 != 0){
            counter++;
//            [result addObject:value];
        }
    }
    return counter;
}

@end
