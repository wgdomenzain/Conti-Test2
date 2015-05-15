//
//  ViewController.m
//  Conti-Tests
//
//  Created by Walter Gonzalez Domenzain on 15/05/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import "Sums.h"

@interface Sums ()

@end

@implementation Sums

- (void)viewDidLoad {
    [super viewDidLoad];
    _mem = [NSMutableDictionary new];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(int)calculateSums
{
    int iResult;
    iResult = 2 + 2;
    return iResult;
}

-(NSString*)showString
{
    NSString *stName;
    stName = @"Ruben";
    return stName;
}

//---------------------------------------------
-(void) calculateFibonacci
{
        int a = 0;
        int b = 1;
        int temp = 0;
    
        [_mem setObject:@"1" forKey: [NSString stringWithFormat:@"%d", 0]];
        [_mem setObject:@"1" forKey: [NSString stringWithFormat:@"%d", 1]];
    
        for(int i = 0; i < 44; i++ )
            {
                    temp = a + b;
                    //NSLog( @"%d\n", temp  );
                    [_mem setObject:@"1" forKey: [NSString stringWithFormat:@"%d", temp]];
                    a = b;
                    b = temp;
                }
    }

-(BOOL) isFibonacciNumber: (int) n
{
        static BOOL once = YES;
        if( once )
            {
                    [self calculateFibonacci];
                    once = NO;
                }
    [self calculateFibonacci];
    return ([_mem objectForKey: [NSString stringWithFormat:@"%d", n]] != nil) ? YES : NO;
    }
//------------------------------------------------------------

-(BOOL)isEvenNumber:(NSInteger)number
{
    if (number % 2)
    {
        return NO;
    }
    else{
        return YES;
    }
}

//--------------------------------------------
-(BOOL)isPrimeNumber:(NSInteger) number
{
    
    BOOL isPrime = YES;
    for (int i=2; i < number -1; i++)
    {
        if (number % i == 0)
        {
            isPrime = NO;
            
            break;
        }
    }
    
    return isPrime;
}


@end