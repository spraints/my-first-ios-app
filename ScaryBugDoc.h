//
//  ScaryBugDoc.h
//  ScaryBugsNoStoryboard
//
//  Created by Matt Burke on 11/3/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ScaryBugData;

@interface ScaryBugDoc : NSObject

@property (retain) ScaryBugData *data;
@property (retain) UIImage *thumbImage;
@property (retain) UIImage *fullImage;

- (id)initWithTitle:(NSString*)title rating:(float)rating thumbImage:(UIImage*)thumbImage fullImage:(UIImage*)fullImage;

@end
