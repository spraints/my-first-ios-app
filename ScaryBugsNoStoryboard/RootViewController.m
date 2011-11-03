//
//  RootViewController.m
//  ScaryBugsNoStoryboard
//
//  Created by Matt Burke on 11/3/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "RootViewController.h"
#import "EditBugViewController.h"
#import "ScaryBugDoc.h"
#import "ScaryBugData.h"

@implementation RootViewController

@synthesize bugs;
@synthesize editBugViewController;

- (void)didReceiveMemoryWarning {
    self.editBugViewController = nil;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Scary Bugs!";
}

- (void)viewWillAppear:(BOOL)animated {
    [self.tableView reloadData];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return YES;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.bugs.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    [self configureCell:cell atIndexPath:indexPath];
    
    return cell;
}

- (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath {
    ScaryBugDoc *doc = [self.bugs objectAtIndex:indexPath.row];
    cell.textLabel.text = doc.data.title;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.imageView.image = doc.thumbImage;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if(self.editBugViewController == nil) {
        self.editBugViewController = [[EditBugViewController alloc] init];
    }
    ScaryBugDoc *doc = [self.bugs objectAtIndex:indexPath.row];
    self.editBugViewController.bugDoc = doc;
    [self.navigationController pushViewController:self.editBugViewController animated:YES];
}

@end
