//
//  ICBBlackjackAppDelegate.h
//  ICBBlackjack
//
//  Created by Matt Bishop on 11/12/10.
//  Copyright 2010 iphone App development club. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ICBBlackjackViewController;

@interface ICBBlackjackAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ICBBlackjackViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ICBBlackjackViewController *viewController;

@end

