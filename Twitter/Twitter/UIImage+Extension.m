//
//  UIImage+Extension.m
//  Twitter
//
//  Created by Frankenstein Yang on 2/1/15.
//  Copyright (c) 2015 Frankenstein Yang. All rights reserved.
//

#import "UIImage+Extension.h"

@implementation UIImage (Extension)

+ (UIImage *)imageWithName:(NSString *)name {
    
    UIImage *image = nil;
    if (iOS7) {
        NSString *newName = [name stringByAppendingString:@"_os7"];
        image = [UIImage imageNamed:newName];
    }
    
    if (image == nil) {
        image = [UIImage imageNamed:name];
    }
    return image;
    
}

@end
