//
//  HTTrackRowView.h
//  Halftrack
//
//  Created by Joel on 2/12/14.
//  Copyright (c) 2014 Joel. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "HTShipment.h"

#define MIN_ROW_HEIGHT 70.0f
#define MAX_ROW_HEIGHT 90.0f

@interface HTTrackRowView : NSView {
    HTShipment *shipment;
}

- (id)initWithShipment:(HTShipment *)s;

+ (CGFloat)rowHeightByWidth:(CGFloat)width;

+ (void)withPristineContext:(void (^)(void))blk;

@end
