//
//  chikuwakuAppDelegate.h
//  testapp002
//
//  Created by fukushi on 2014/03/18.
//  Copyright (c) 2014年 chikuwaku. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "chikuwakuVideoListViewController.h"
#import "Stats.h"

@interface chikuwakuAppDelegate : UIResponder <UIApplicationDelegate>
{
    UIViewController * videoListViewController;
}

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (nonatomic, strong) Stats *stats;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
