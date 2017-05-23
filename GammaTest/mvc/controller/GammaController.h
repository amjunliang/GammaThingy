//
//  GammaController.h
//  GammaTest
//
//  Created by Thomas Finch on 6/22/15.
//  Copyright (c) 2015 Thomas Finch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GammaController : NSObject

+ (void)setGammaWithOrangeness:(float)percentOrange;
+ (void)setEnabled:(BOOL)enabled;
+ (void)autoChangeOrangenessIfNeeded;

@end
