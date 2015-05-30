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
        
        [items insertObject:@"zero" atIndex:0];
        
        for (NSString *item in items) {
            NSLog(@"%@", item);
        }
        
        BNRItem *p = [[BNRItem alloc] init];
        
        [p setItemName:@"Guitar"];
        [p setSerialNumber:@"A432SDKL32L"];
        [p setValueInDollar:90];
        
        
        NSLog(@"%@,%@,%@,%d", [p itemName], [p serialNumber], [p dateCreated], [p valueInDollar]);
        
    }
    return 0;
}
