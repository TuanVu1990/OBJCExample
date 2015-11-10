//
//  DemoFunction.m
//  OBJCExamples
//
//  Created by tuanvu on 11/9/15.
//  Copyright © 2015 tuanvu. All rights reserved.
//

#import "DemoFunction.h"

@interface DemoFunction ()

@end

@implementation DemoFunction

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self writeln:@"Demo Function"];
    [self writeln:@"Hello World"];
    [self sayFirstName:@"Steve" andLastName:@"Jobs"];
    float tempDegree = 30.1;
    NSString* result = [NSString stringWithFormat:@"%2.1f degree equal to %3.1f F",tempDegree, [self celciusToFahrenheit:tempDegree]];
    [self writeln:result];
    [self performSelector:@selector(celciusToFahrenheit)];
    [self performSelector:@selector(celciusToFahrenheit2:) withObject:@(30.1)];
    [self writeln:result];
}

-(void) sayFirstName: (NSString*) firstName andLastName: (NSString*) lastName {
    NSLog(@"%@ %@", firstName, lastName);
}

-(float) celciusToFahrenheit: (float) degree {
    return degree * 1.8 +32.0;
}

-(void) celciusToFahrenheit {
    NSLog(@"Do nothing");
}

-(float) celciusToFahrenheit2 {
    return 10.1;
}

-(void) celciusToFahrenheit2: (NSNumber*) degree {
    float result = [degree floatValue] * 1.8 + 32.0;
    NSLog(@"Result = %2.1f", result);
}

@end
