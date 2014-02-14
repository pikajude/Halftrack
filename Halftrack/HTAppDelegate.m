//
//  HTAppDelegate.m
//  Halftrack
//
//  Created by Joel on 2/11/14.
//  Copyright (c) 2014 Joel. All rights reserved.
//

#import "HTAppDelegate.h"

@implementation HTAppDelegate

- (void)windowWillClose:(NSNotification *)notification
{
    [NSApp terminate:nil];
}

- (void)windowDidResize:(NSNotification *)notification
{
    [self.trackCtrl notifyResize];
}

@end
