//
//  HTTrackingController.h
//  Halftrack
//
//  Created by Joel on 2/14/14.
//  Copyright (c) 2014 Joel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HTTrackRowView.h"

@interface HTTrackingController : NSObject <NSTableViewDelegate, NSTableViewDataSource> {
    NSMutableArray *shipments;
    NSMutableDictionary *views;
}

@property (assign) IBOutlet NSTableView *tv;

- (void)notifyResize;

@end
