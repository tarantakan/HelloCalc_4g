//
//  HelloCalcViewController.m
//  HelloCalc
//
//  Created by Anton on 12/4/3.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "HelloCalcViewController.h"

#import "HelloCalcDataController.h"

#import "CalcResult.h"

@interface HelloCalcViewController () /*<HelloCalcAppDelegate>*/

@end

@implementation HelloCalcViewController

//@synthesize delegate = _delegate;
@synthesize dataController = _dataController;
@synthesize bufferOutLbl = _bufferOutLbl;
@synthesize numberInField = _numberInField;
@synthesize resultsTableView = _resultsTableView;

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    if (textField == self.numberInField) {
        
        [textField resignFirstResponder];
        
    }
    
    return YES;
    
}

/*- (void)addSightingViewControllerDidCancel:(HelloCalcViewController *)controller {
    
    [self dismissViewControllerAnimated:YES completion:NULL];
    
}

- (void)HelloCalcViewControllerDidFinish:(HelloCalcViewController *)controller value:(NSString *)value {
    
    
    
    if ([value length]) {
        
        [self.dataController addToBuffer:value];
        
    }
    
    [self dismissModalViewControllerAnimated:YES];
    
}*/

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self.dataController countOfList];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    static NSString *CellIdentifier = @"ResultCell";
        
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];

    
    CalcResult *resultAtIndex = [self.dataController objectInListAtIndex:indexPath.row];
    
    NSString *resultAsString = [NSString stringWithFormat:@"%lf", resultAtIndex];
    
    [[cell textLabel] setText:resultAsString];
    
    
    return cell;
    
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {     return NO; }


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setNumberInField:nil];
    [self setResultsTableView:nil];
    [self setBufferOutLbl:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (IBAction)numEnterBtn:(id)sender {
    
    if ([[self.numberInField text] length]) {
        
        [self.dataController addToBuffer:self.numberInField.text];
        
    }
    
    [self.bufferOutLbl setText:self.dataController.calcBuffer];
    
    [self dismissModalViewControllerAnimated:YES];
    
    [self.numberInField resignFirstResponder];
    
    /*[[self delegate] HelloCalcViewControllerDidFinish:self value:self.numberInField.text];*/
    
}

- (IBAction)computeBtn:(id)sender {
    
    // Compute buffered expression.
    
}

- (IBAction)cEBtn:(id)sender {
    
    // Clear last number entry.
    
}

- (IBAction)flushBufBtn:(id)sender {
    
    [self.dataController clearBuf];
    
    [self.bufferOutLbl setText:@""];
    
}

@end
