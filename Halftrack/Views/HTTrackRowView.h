//
//  HTTrackRowView.h
//  Halftrack
//
//  Created by Joel on 2/12/14.
//  Copyright (c) 2014 Joel. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "HTShipment.h"

@interface HTTrackRowView : NSView {
    HTShipment *shipment;
}

- (id)initWithShipment:(HTShipment *)s;

@end
