//
//  EditBugViewController.h
//  ScaryBugsNoStoryboard
//
//  Created by Matt Burke on 11/3/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ScaryBugDoc.h"

@interface EditBugViewController : UIViewController <UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (retain) ScaryBugDoc *bugDoc;
@property (retain) UITextField *titleField;
@property (retain) UIImageView *imageView;
@property (retain) UIScrollView *rating;
@property (retain) UIImagePickerController *picker;

//- (void)titleFieldValueChanged:(id)sender;
//- (void)addPictureTapped:(id)sender;

@end
