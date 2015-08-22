//
//  ViewController.m
//  practice
//
//  Created by abhayam rastogi on 7/18/15.
//  Copyright (c) 2015 Intelligrape. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"f1: %i",f());
    NSLog(@"f2: %i",f());
    NSLog(@"f3: %i",f());
    
    NSLog(@"g1: %i",g());
    NSLog(@"g2: %i",g());
    NSLog(@"g3: %i",g());
    
    [self print:@"Vishal"];
    [self print:@"Prabhat"];
    [self print:@"Pawan"];

    id obj = @"vishal";
    obj = [@{@"kery":@"run"} mutableCopy];
    [obj removeObjectForKey:@"kery"];
}

-(void) print : (NSString *)str {
    static NSString *str1;
    str1 = str;
    NSLog(@"address : %p",&str1);
}

int f(void)
{
    int i = 5;
    i += 10;
    return i;
}

int g(void)
{
    static int i = 5;
    i += 10;
    return i;
}

-(NSString *) fr :(NSString *)str
{
    [str stringByAppendingString:@"Pravhat"];
    return [str stringByAppendingString:@"Pravhat"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
