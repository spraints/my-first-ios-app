//
//  ScaryBugData.h
//  ScaryBugsNoStoryboard
//
//  Created by Matt Burke on 11/3/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScaryBugData : NSObject

@property (copy) NSString *title;
@property float rating;

- (id)initWithTitle:(NSString*)title rating:(float)rating;

@end
