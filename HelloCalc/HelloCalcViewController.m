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

//@protocol NSTableViewDataSource, NSTableViewDelegate;

@implementation HelloCalcViewController

//@synthesize delegate = _delegate;

//@synthesize rsltTable = _rsltTable;

@synthesize resultsTableView = _resultsTableView;
@synthesize dataController = _dataController;
@synthesize bufferOutLbl = _bufferOutLbl;
@synthesize numberInField = _numberInField;

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
    
    NSString *resultAsString = [NSString stringWithFormat:@"%lf", resultAtIndex.value];
    
    [[cell textLabel] setText:resultAsString];
    
    return cell;
    
}


//---
/*

- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    
    
    
    // get an existing cell with the MyView identifier if it exists
    
    NSTextField *result = [tableView makeViewWithIdentifier:@"ResultCell" owner:self];
    
    // There is no existing cell to reuse so we will create a new one
    
    if (result == nil) {
        
        // create the new NSTextField with a frame of the {0,0} with the width of the table
        
        // note that the height of the frame is not really relevant, the row-height will modify the height
        
        // the new text field is then returned as an autoreleased object
        
        result = [[[NSTextField alloc] initWithFrame:...] autorelease];
        
        // the identifier of the NSTextField instance is set to MyView. This
        
        // allows it to be re-used
        
        result.identifier = @"ResultCell";
        
    }
    
    // result is now guaranteed to be valid, either as a re-used cell
    
    // or as a new cell, so set the stringValue of the cell to the
    
    // nameArray value at row
    
    result.stringValue = [self.rsltTable objectAtIndex:row];
    
    // return the result.
    
    return result;
    
}

*/
//---


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
    //[self setRsltTable:nil];
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
    
    [self.bufferOutLbl setText:self.dataController.calcBuffer];
    
}

- (IBAction)plusBtn:(id)sender {
}

- (IBAction)minusBtn:(id)sender {
}

- (IBAction)multBtn:(id)sender {
}

- (IBAction)divBtn:(id)sender {
}

@end
