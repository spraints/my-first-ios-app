//
//  ScaryBugData.m
//  ScaryBugsNoStoryboard
//
//  Created by Matt Burke on 11/3/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ScaryBugData.h"

@implementation ScaryBugData
@synthesize title = _title;
@synthesize rating = _rating;

- (id)initWithTitle:(NSString *)title rating:(float)rating {
    if ((self = [super init])) {
        self.title = title;
        self.rating = rating;
    }
    return self;
}

@end
