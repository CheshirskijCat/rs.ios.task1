#import "NumberConverter.h"
#import "math.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    
    NSString* numberString = [NSString stringWithFormat:@"%d", abs([number intValue])];
    NSMutableArray *characters = [[NSMutableArray alloc] initWithCapacity:[numberString length]];
    for (int i=(int)[numberString length] - 1; i >= 0; i--) {
        NSString *ichar  = [NSString stringWithFormat:@"%c", [numberString characterAtIndex:i]];
        [characters addObject:ichar];
    }
    return characters;
}

@end
