//
//  HTAppDelegate.m
//  Halftrack
//
//  Created by Joel on 2/11/14.
//  Copyright (c) 2014 Joel. All rights reserved.
//

#import "HTAppDelegate.h"

@implementation HTAppDelegate

- (id)init
{
    self = [super init];
    shipments = [NSMutableArray array];
    [shipments addObject:[HTShipment new]];
    [shipments addObject:[HTShipment new]];
    [shipments addObject:[HTShipment new]];
    [shipments addObject:[HTShipment new]];
    return self;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    
}

- (CGFloat)tableView:(NSTableView *)tableView heightOfRow:(NSInteger)row
{
    return 50.0f;
}

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
{
    return [shipments count];
}

- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    return [[HTTrackRowView alloc] initWithShipment:[shipments objectAtIndex:row]];
}

@end
