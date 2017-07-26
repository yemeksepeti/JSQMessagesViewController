//
//  Created by Jesse Squires
//  http://www.jessesquires.com
//
//
//  Documentation
//  http://cocoadocs.org/docsets/JSQMessagesViewController
//
//
//  GitHub
//  https://github.com/jessesquires/JSQMessagesViewController
//
//
//  License
//  Copyright (c) 2014 Jesse Squires
//  Released under an MIT license: http://opensource.org/licenses/MIT
//

#import "NSBundle+JSQMessages.h"

#import "JSQMessagesViewController.h"

@implementation NSBundle (JSQMessages)

+ (NSBundle *)jsq_messagesBundle
{
    return [NSBundle bundleForClass:[JSQMessagesViewController class]];
}

+ (NSBundle *)jsq_messagesAssetBundle
{
    NSString *bundleResourcePath = [NSBundle jsq_messagesBundle].resourcePath;
    NSString *assetPath = [bundleResourcePath stringByAppendingPathComponent:@"JSQMessagesAssets.bundle"];
    return [NSBundle bundleWithPath:assetPath];
}

static NSBundle *localizationBundle;
+ (void)jsq_setLocalizationBundle:(NSBundle*)bundle {
    localizationBundle = bundle;
}

+ (NSString *)jsq_localizedStringForKey:(NSString *)key
{
    return NSLocalizedStringFromTableInBundle(key, @"Accessibility", localizationBundle, nil);
}

@end
