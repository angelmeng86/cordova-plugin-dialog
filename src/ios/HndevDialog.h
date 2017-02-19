//
//  HndevShow.h
//  myAppOld
//
//  Created by Mapple on 2017/2/19.
//
//
#import <UIKit/UIKit.h>
#import <Cordova/CDVPlugin.h>

@interface HndevDialog : CDVPlugin

- (void)showMessageBox:(CDVInvokedUrlCommand*)command;

@end
