//
//  RootViewController.h
//  ScaryBugsNoStoryboard
//
//  Created by Matt Burke on 11/3/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//



@interface RootViewController : UITableViewController

@property (retain) NSMutableArray *bugs;

- (void)configureCell:(UITableViewCell*)cell atIndexPath:(NSIndexPath*)indexPath;

@end
