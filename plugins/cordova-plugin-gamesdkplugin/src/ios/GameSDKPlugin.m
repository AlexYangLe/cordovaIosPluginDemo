/********* GameSDKPlugin.m Cordova Plugin Implementation *******/

#import "GameSDKPlugin.h"

@implementation GameSDKPlugin

- (void)coolMethod:(CDVInvokedUrlCommand*)command
{
    NSLog(@"coolMethod use");
    CDVPluginResult* pluginResult = nil;
    NSString* name = [command.arguments objectAtIndex:0];
    NSString* userNo = [command.arguments objectAtIndex:1];


    if (name != nil && [name length] > 0 && userNo != nil && [userNo length] > 0) {
        // pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsArray:@[name, userNo]];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
