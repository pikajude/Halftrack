//
//  HTTrackRowView.m
//  Halftrack
//
//  Created by Joel on 2/12/14.
//  Copyright (c) 2014 Joel. All rights reserved.
//

#import "HTTrackRowView.h"

@implementation HTTrackRowView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    return self;
}

- (id)initWithShipment:(HTShipment *)_ship
{
    self = [super init];
    shipment = _ship;
    return self;
}

- (void)drawRect:(NSRect)dirtyRect
{
	[super drawRect:dirtyRect];
    
    NSRect progressBar = NSMakeRect(dirtyRect.origin.x + 10,
                                    dirtyRect.origin.y + 10,
                                    dirtyRect.size.width - 20,
                                    dirtyRect.size.height - 20);
    [[NSColor blueColor] set];
    NSRectFill(progressBar);
    
    [@"foobar" drawAtPoint:dirtyRect.origin withAttributes:[NSDictionary dictionary]];
	
    // Drawing code here.
}

@end
