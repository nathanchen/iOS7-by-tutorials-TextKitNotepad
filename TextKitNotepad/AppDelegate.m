//
//  AppDelegate.m
//  TextKitNotepad
//
//  Created by Nate on 19/03/2015.
//  Copyright (c) 2015 Nathan CHEN. All rights reserved.
//

#import "AppDelegate.h"
#import "Note.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (NSMutableArray *)notes
{
    return [[NSMutableArray alloc] initWithObjects:
            [[Note alloc] initWithText:@"Shopping List\r\r1. Cheese\r2. Biscuits\r3. Sausages\r4. IMPORTANT Cash for going out!\r5. -potatoes-\r6. A copy of iOS6 by tutorials\r7. A new iPhone\r8. A present for mum"] ,
            [[Note alloc] initWithText:@"Meeting notes\rA long and drawn out meeting, it lasted hours and hours and hours!"] ,
            [[Note alloc] initWithText:@"Perfection ... \n\nPerfection is achieved not when there is nothing left to add, but when there is nothing left to take away - Antoine de Saint-Exupery"] ,
            [[Note alloc] initWithText:@"Notes on iOS7\nThis is a big change in the UI design, it's going to take a *lot* of getting used to!"] ,
            [[Note alloc] initWithText:@"Meeting notes\rA dfferent meeting, just as long and boring"] ,
            [[Note alloc] initWithText:@"A collection of thoughts\rWhy do birds sing? Why is the sky blue? Why is it so hard to create good test data?"] ,nil];
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    UIColor *navColor = [UIColor colorWithRed:0.175 green:0.458 blue:0.831 alpha:1];
    [UINavigationBar appearance].barTintColor = navColor;
    [UINavigationBar appearance].tintColor = [UIColor whiteColor];
    [UINavigationBar appearance].titleTextAttributes = [[NSDictionary alloc] initWithObjectsAndKeys:NSForegroundColorAttributeName, [UIColor whiteColor], nil];
    
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
