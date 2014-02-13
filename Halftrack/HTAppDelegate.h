//
//  HTAppDelegate.h
//  Halftrack
//
//  Created by Joel on 2/11/14.
//  Copyright (c) 2014 Joel. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "HTShipment.h"
#import "HTTrackRowView.h"

@interface HTAppDelegate : NSObject <NSApplicationDelegate, NSTableViewDelegate, NSTableViewDataSource> {
    NSMutableArray *shipments;
}

@property (assign) IBOutlet NSWindow *window;

@end
