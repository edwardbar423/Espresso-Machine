//
//  EspressoMachine.m
//  Espresso Machine
//
//  Created by Andrew Barber on 8/23/16.
//  Copyright © 2016 Invictus. All rights reserved.
//

#import "EspressoMachine.h"

@implementation EspressoMachine

-(void)makeEspresso
    {
        id<EspressoMachineDelegate> strongDelegate = self.delegate;
        BOOL checkForWater = ((arc4random() % 2) == 1);
        
        if(checkForWater) {
            if ([strongDelegate addWater:self]) {
                NSLog(@"Added water!");
            } else {
                NSLog(@"There is already water here!");
            }
        } else {
            NSLog(@"I can't find any water!");
        }
    
        BOOL checkForBeans = ((arc4random() % 2) == 1);
        
        if(checkForBeans) {
            if ([strongDelegate addBeans:self]) {
                NSLog(@"Added beans!");
            } else {
                NSLog(@"Already beans here sir!");
            }
        }
        
        BOOL checkForHotWater = ((arc4random() % 2) == 1);
        
        if(checkForHotWater) {
            if ([strongDelegate brewWater:self]) {
                NSLog(@"FRESH AND HOT!");
            } else {
                NSLog(@"WARMING UP SOME HOT WATTTTERRRR!!");
            }
        }
        
    }

@end
