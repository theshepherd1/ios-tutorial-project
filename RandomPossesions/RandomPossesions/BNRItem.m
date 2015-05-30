//
//  BNRItem.m
//  RandomPossesions
//
//  Created by Tony Mu on 5/29/15.
//  Copyright (c) 2015 Tony Mu. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

- (void)setItemName: (NSString *)name;
{
    self.itemName = name;
}
- (NSString *)itemName;
{
    return itemName;
}

- (void)setSerialNumber: (NSString *)number;
{
    self.serialNumber = number;
}
- (NSString *)serialNumber;
{
    return serialNumber;
}

- (void)setValueInDollar: (int)value;
{
    self.valueInDollar = value;
}
- (int)valueInDollar;
{
    return valueInDollar;
}

- (NSDate *)dateCreated;
{
    return dateCreated;
}


@end
