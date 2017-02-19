//
//  HndevShow.m
//  myAppOld
//
//  Created by Mapple on 2017/2/19.
//
//

#import "HndevDialog.h"

@implementation HndevDialog

- (void)showMessageBox:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    if (command.arguments.count == 2) {
        NSString* title = [command.arguments objectAtIndex:0];
        NSString* message = [command.arguments objectAtIndex:1];
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:message delegate:nil cancelButtonTitle:@"Cancel" otherButtonTitles:nil, nil];
        [alertView show];
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    }
    else
    {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Arg was invalid."];
    }
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
