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

+ (CGFloat)rowHeightByWidth:(CGFloat)width
{
    return MAX(MIN_ROW_HEIGHT, MIN(MAX_ROW_HEIGHT, width * 0.4f)) + 1;
}

- (void)drawRect:(NSRect)_dirtyRect
{
    NSRect bounds = self.bounds;
    
    // draw paper
    
    [NSGraphicsContext saveGraphicsState];
    
    NSRect progressBar = NSMakeRect(MAX(1, bounds.origin.x + 5),
                                    MAX(1, bounds.origin.y + 3),
                                    MAX(1, bounds.size.width - 9),
                                    MAX(1, bounds.size.height - 6));
    
    NSShadow *shad = [NSShadow new];
    [shad setShadowOffset:NSMakeSize(0.f, -1.5f)];
    [shad setShadowColor:[NSColor colorWithDeviceWhite:0.f alpha:0.2f]];
    [shad setShadowBlurRadius:1.5f];
    [shad set];
    
    NSBezierPath *surroundings = [NSBezierPath bezierPathWithRoundedRect:progressBar xRadius:1.0f yRadius:1.0f];
    
    [[NSColor whiteColor] set];
    
    [surroundings fill];
    
    [NSGraphicsContext restoreGraphicsState];
    
    // draw text
    
    [NSGraphicsContext saveGraphicsState];
    
    NSDictionary *dict = @{NSFontAttributeName: [NSFont fontWithName:@"Roboto" size:24.f]};
    
    NSAttributedString *str = [[NSAttributedString alloc] initWithString:@"foo" attributes:dict];
    
    [str drawAtPoint:bounds.origin];
    
    [NSGraphicsContext restoreGraphicsState];
}

@end
