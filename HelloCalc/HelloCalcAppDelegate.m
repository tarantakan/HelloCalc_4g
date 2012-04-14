//
//  HelloCalcAppDelegate.m
//  HelloCalc
//
//  Created by Anton on 12/4/9.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "HelloCalcAppDelegate.h"

#import "HelloCalcDataController.h"
#import "HelloCalcViewController.h"

@implementation HelloCalcAppDelegate

@synthesize window = _window;
@synthesize navController = _navController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions

{

    [window addSubview:[navController view]];
    [window makeKeyAndVisible];
    
    /*UINavigationController *navigationController = (UINavigationController *)self.window.rootViewController;
    
    BirdsMasterViewController *firstViewController = (BirdsMasterViewController *)[[navigationController viewControllers] objectAtIndex:0];
    
    
    
    BirdSightingDataController *aDataController = [[BirdSightingDataController alloc] init];
    
    firstViewController.dataController = aDataController;*/
    
    HelloCalcViewController *theViewCtrlr = (HelloCalcViewController *)self.window.rootViewController;
    
    HelloCalcDataController *dataCtrlr = [[HelloCalcDataController alloc] init];
    
    theViewCtrlr.dataController = dataCtrlr;
    
    return YES;
    
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Save data if appropriate.
}


- (void)dealloc {
    // Clean stuff up.
} 

@end

