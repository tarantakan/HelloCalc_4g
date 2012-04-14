//
//  HelloCalcViewController.h
//  HelloCalc
//
//  Created by Anton on 12/4/3.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

//@protocol HelloCalcAppDelegate;

@class HelloCalcDataController;

@interface HelloCalcViewController : UIViewController <UITextFieldDelegate>

//@property (weak, nonatomic) id <HelloCalcAppDelegate> delegate;

@property (strong, nonatomic) HelloCalcDataController *dataController;

@property (weak, nonatomic) IBOutlet UILabel *bufferOutLbl;

@property (weak, nonatomic) IBOutlet UITableView *resultsTableView;

@property (weak, nonatomic) IBOutlet UITextField *numberInField;

- (IBAction)numEnterBtn:(id)sender;
- (IBAction)computeBtn:(id)sender;
- (IBAction)cEBtn:(id)sender;
- (IBAction)flushBufBtn:(id)sender;

@end

/*@protocol HelloCalcAppDelegate <NSObject>

- (void)HelloCalcViewControllerDidCancel:(HelloCalcViewController *)controller;

- (void)HelloCalcViewControllerDidFinish:(HelloCalcViewController *)controller value:(NSString *)value;

@end*/