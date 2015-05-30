//
//  BNRItem.h
//  RandomPossesions
//
//  Created by Tony Mu on 5/29/15.
//  Copyright (c) 2015 Tony Mu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
{
    NSString *itemName;
    NSString *serialNumber;
    int valueInDollar;
    NSDate *dateCreated;
}

- (void)setItemName: (NSString *)name;
- (NSString *)itemName;

- (void)setSerialNumber: (NSString *)number;
- (NSString *)serialNumber;

- (void)setValueInDollar: (int)value;
- (int)valueInDollar;

- (NSDate *)dateCreated;

@end
