//
//  BNRItem.m
//  RandomPossesions
//
//  Created by Tony Mu on 5/29/15.
//  Copyright (c) 2015 Tony Mu. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

- (id)initWithItemName: (NSString *)name serialNumber: (NSString *)number valueInDollar: (int)value;
{
    [self setItemName:name];
    [self setSerialNumber:serialNumber];
    [self setValueInDollar:value];
    dateCreated = [[NSDate alloc] init];
    
    return self;
}

- (NSString *)description;
{
    NSString *descriptionString =
        [[NSString alloc] initWithFormat:@"%@, (%@): Worth $%d, recorded on %@",
         itemName, serialNumber, valueInDollar, dateCreated];
    
    return descriptionString;
}


- (void)setItemName: (NSString *)name;
{
    itemName = name;
}
- (NSString *)itemName;
{
    return itemName;
}

- (void)setSerialNumber: (NSString *)number;
{
    serialNumber = number;
}
- (NSString *)serialNumber;
{
    return serialNumber;
}

- (void)setValueInDollar: (int)value;
{
    valueInDollar = value;
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
