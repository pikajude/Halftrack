//
//  HTShipment.h
//  Halftrack
//
//  Created by Joel on 2/12/14.
//  Copyright (c) 2014 Joel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HTShipment : NSObject

+ (HTShipment *)shipmentWithTitle:(NSString *)t;

@property (retain) NSString *title;

@end
