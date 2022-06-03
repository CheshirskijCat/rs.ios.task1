#import "LeaderBoardTracker.h"

@interface LeaderBoardTracker()

@property (nonatomic, strong) NSArray <NSNumber *> *playersPlaces;

@end

@implementation LeaderBoardTracker

- (NSArray <NSNumber *> *)trackLeaderBoard:(NSArray <NSNumber *> *)rankedArray
                               playerArray:(NSArray <NSNumber *> *)playerArray {
    
    if ([playerArray count] == 0) return @[];
    
    NSNumber *first = @(1);
    NSMutableArray *result = [NSMutableArray new];
    NSMutableArray *ranks = [NSMutableArray new];
    
    int rankCount = (int)[rankedArray count];

    if (rankCount > 0){
        [ranks addObject:first];
        int count = 1;
        for (int i = 1; i < rankCount; i++){
            if ([rankedArray[i-1] intValue] > [rankedArray[i] intValue]){
                count++;
            }
            [ranks addObject:@(count)];
        }
        [ranks addObject:@(++count)];
    }

    for (NSNumber *number in ranks){
        printf (" Element = %s", [[number stringValue] UTF8String]);
    }
    
    int ranksCount = (int)[ranks count];
    
    for (NSNumber *number in playerArray){
        int index = ranksCount - 1;
        for (NSNumber *rankedScore in rankedArray){
            if ([number intValue] >= [rankedScore intValue]){
                index = (int)[rankedArray indexOfObject:rankedScore];
                break;
            }
        }
        if ([rankedArray count] == 0){
            [result addObject:first];
        } else {
            [result addObject:ranks[index]];
        }
    }
        
    return result;
}

@end
