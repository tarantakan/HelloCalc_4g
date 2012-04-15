//
//  HelloCalcViewController.h
//  HelloCalc
//
//  Created by Anton on 12/4/3.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HelloCalcDataController;

//@protocol NSTableViewDataSource, NSTableViewDelegate;

@interface HelloCalcViewController : UIViewController

//@property (weak, nonatomic) id <HelloCalcAppDelegate> delegate;

@property (strong, nonatomic) HelloCalcDataController *dataController;

@property (weak, nonatomic) IBOutlet UILabel *bufferOutLbl;

@property (weak, nonatomic) IBOutlet UITableView *resultsTableView;

@property (weak, nonatomic) IBOutlet UITextField *numberInField;

//@property (strong, nonatomic) IBOutletCollection(UITableView) NSArray *rsltTable;

- (IBAction)numEnterBtn:(id)sender;
- (IBAction)computeBtn:(id)sender;
- (IBAction)cEBtn:(id)sender;
- (IBAction)flushBufBtn:(id)sender;
- (IBAction)plusBtn:(id)sender;
- (IBAction)minusBtn:(id)sender;
- (IBAction)multBtn:(id)sender;
- (IBAction)divBtn:(id)sender;

@end

/*@protocol HelloCalcAppDelegate <NSObject>

- (void)HelloCalcViewControllerDidCancel:(HelloCalcViewController *)controller;

- (void)HelloCalcViewControllerDidFinish:(HelloCalcViewController *)controller value:(NSString *)value;

@end*/