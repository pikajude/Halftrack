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
    views = [NSMutableDictionary dictionary];
    return self;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    [self.tv setBackgroundColor:[NSColor colorWithDeviceWhite:0.9f alpha:1.f]];
}

- (void)windowWillClose:(NSNotification *)notification
{
    [NSApp terminate:nil];
}

- (void)windowDidResize:(NSNotification *)notification
{
    [self.tv setRowHeight:[HTTrackRowView rowHeightByWidth:self.tv.bounds.size.width]];
    // [self.tv setRowHeight:MAX(MIN_ROW_HEIGHT, MIN(MAX_ROW_HEIGHT, self.tv.bounds.size.width * 0.2f - 40.0f)) + 1];
}

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
{
    return [shipments count];
}

- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    NSNumber *r = [NSNumber numberWithInteger:row];
    if ([views objectForKey:r] == nil) {
        HTTrackRowView *v = [[HTTrackRowView alloc] initWithShipment:[shipments objectAtIndex:row]];
        [views setObject:v forKey:r];
    }
    return [views objectForKey:r];
}

@end
