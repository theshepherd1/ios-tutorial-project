//
//  main.m
//  RandomPossesions
//
//  Created by Tony Mu on 5/29/15.
//  Copyright (c) 2015 Tony Mu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        [items addObject:@"one"];
        [items addObject:@"two"];
        [items addObject:@"three"];
        [items addObject:@"four"];
        [items addObject:@"five"];
        
        [items insertObject:@"zero" atIndex:0];
        
        for (NSString *item in items) {
            NSLog(@"%@", item);
        }
        
        BNRItem *p = [[BNRItem alloc] initWithItemName:@"Guitar" serialNumber:@"A2D92K3" valueInDollar:33];

        NSLog(@"%@", [p description]);
    }
    return 0;
}
