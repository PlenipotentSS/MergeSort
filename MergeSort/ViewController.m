//
//  ViewController.m
//  MergeSort
//
//  Created by Stevenson on 27/02/2014.
//  Copyright (c) 2014 Steven Stevenson. All rights reserved.
//

#import "ViewController.h"
#import "NSMutableArray+MergeSort.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSMutableArray *anArray = [NSMutableArray new];
    NSInteger maxNumber = 10;
    for (int i=0; i<maxNumber; i++) {
        NSInteger value = (NSInteger)rand()%maxNumber;
        [anArray addObject:@(value)];
    }
    NSMutableArray *sortedArray = [NSMutableArray mergeSort:anArray];
    
    NSLog(@"%@",sortedArray);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
