//
//  HTShipment.m
//  Halftrack
//
//  Created by Joel on 2/12/14.
//  Copyright (c) 2014 Joel. All rights reserved.
//

#import "HTShipment.h"

@implementation HTShipment

+ (HTShipment *)shipmentWithTitle:(NSString *)t
{
    HTShipment *ship = [HTShipment new];
    ship.title = t;
    return ship;
}

@end
