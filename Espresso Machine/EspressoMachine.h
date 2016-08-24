//
//  EspressoMachine.h
//  Espresso Machine
//
//  Created by Andrew Barber on 8/23/16.
//  Copyright © 2016 Invictus. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@protocol EspressoMachineDelegate;

@interface EspressoMachine : NSObject

@property (nonatomic, weak) id<EspressoMachineDelegate> delegate;

- (void)makeEspresso;

@end

@protocol EspressoMachineDelegate <NSObject>

-(BOOL)addWater:(EspressoMachine *)espressoMachine;
-(BOOL)addBeans:(EspressoMachine *)espressoMachine;
-(BOOL)brewWater:(EspressoMachine *)espressoMachine;

@end
