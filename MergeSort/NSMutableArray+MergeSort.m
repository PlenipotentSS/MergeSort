//
//  NSMutableArray+MergeSort.m
//  MergeSort
//
//  Created by Stevenson on 27/02/2014.
//  Copyright (c) 2014 Steven Stevenson. All rights reserved.
//

#import "NSMutableArray+MergeSort.h"

@implementation NSMutableArray (MergeSort)

+(NSMutableArray*) mergeSort:(NSMutableArray*)theArray
{
    if (theArray.count > 1) {
        NSInteger mid = theArray.count/2;
        NSRange leftRange = NSMakeRange(0, mid);
        NSIndexSet *leftIndices = [NSIndexSet indexSetWithIndexesInRange:leftRange];
        NSMutableArray *leftArray = [NSMutableArray arrayWithArray:[theArray objectsAtIndexes:leftIndices]];
        
        NSRange rightRange = NSMakeRange(mid, mid);
        NSIndexSet *rightIndices = [NSIndexSet indexSetWithIndexesInRange:rightRange];
        NSMutableArray *rightArray = [NSMutableArray arrayWithArray:[theArray objectsAtIndexes:rightIndices]];
        
        NSMutableArray *leftPartition = [self mergeSort:leftArray];
        NSMutableArray *rightPartition = [self mergeSort:rightArray];
        
        NSMutableArray *combinedArray = [self mergeAndSortArray:leftPartition withArray:rightPartition];
        
        return combinedArray;
    }
    return theArray;
}

+(NSMutableArray*) mergeAndSortArray:(NSMutableArray*) array1 withArray:(NSMutableArray*) array2
{
    NSMutableArray *combinedArray = [NSMutableArray new];
    NSInteger index1 = 0;
    NSInteger index2 = 0;
    while (index1+index2 < array1.count+array2.count) {
        if ( index1 < array1.count && index2 < array2.count) {
            if ([[array1 objectAtIndex:index1] integerValue] < [[array2 objectAtIndex:index2] integerValue]) {
                [combinedArray addObject:[array1 objectAtIndex:index1]];
                index1++;
            } else {
                [combinedArray addObject:[array2 objectAtIndex:index2]];
                index2++;
            }
        } else if (index1 < array1.count) {
            [combinedArray addObject:[array1 objectAtIndex:index1]];
            index1++;
        } else {
            [combinedArray addObject:[array2 objectAtIndex:index2]];
            index2++;
        }
    }
    return combinedArray;
}

@end
