//
//  HTTrackingController.m
//  Halftrack
//
//  Created by Joel on 2/14/14.
//  Copyright (c) 2014 Joel. All rights reserved.
//

#import "HTTrackingController.h"

@implementation HTTrackingController

- (id)init
{
    self = [super init];
    shipments = [NSMutableArray array];
    [shipments addObject:[HTShipment shipmentWithTitle:@"Norse hoodie"]];
    [shipments addObject:[HTShipment shipmentWithTitle:@"W+H shoes"]];
    [shipments addObject:[HTShipment shipmentWithTitle:@"Keurig machine"]];
    [shipments addObject:[HTShipment shipmentWithTitle:@"Flyknits"]];
    views = [NSMutableDictionary dictionary];
    return self;
}

- (void)awakeFromNib
{
    [self.tv setBackgroundColor:[NSColor colorWithDeviceWhite:0.9f alpha:1.f]];
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

- (void)notifyResize
{
    [self.tv setRowHeight:[HTTrackRowView rowHeightByWidth:self.tv.bounds.size.width]];
}

@end
