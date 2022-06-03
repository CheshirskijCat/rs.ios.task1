#import "NSArray+MinRotated.h"

@implementation NSArray (MinRotated)

- (NSNumber *)minRotated {
    
//    if ([self count] == 0) return nil;
//
//    long length = [self count];
//    long leftIndex = 0;
//    long rightIndex = length/2;
//    length = length/2;
//    do{
//
//        int left = [[self objectAtIndex:leftIndex] intValue];
//        int right = [[self objectAtIndex:rightIndex] intValue];
//
//        printf("------Min------\n");
//        printf (" Element = %lu - %d - %d - %lu - %lu\n", length, left, right, rightIndex, leftIndex);
//
//        if (left > right){
//            rightIndex -= length/2;
//        }else{
//            leftIndex = rightIndex;
//            rightIndex += length/2;
//        }
//
//        length = length/2;
//        printf (" Element = %lu - %d - %d - %lu - %lu\n", length, [[self objectAtIndex:leftIndex] intValue], [[self objectAtIndex:rightIndex] intValue], rightIndex, leftIndex);
//    }while(length > 1);
//
//    return [self objectAtIndex:rightIndex];
    
    return [self valueForKeyPath:@"@min.self"];
}

@end
