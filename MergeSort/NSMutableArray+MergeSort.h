//
//  NSMutableArray+MergeSort.h
//  MergeSort
//
//  Created by Stevenson on 27/02/2014.
//  Copyright (c) 2014 Steven Stevenson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (MergeSort)

/**
 *
 * implements merge sort divide and conquer. Sorts an array of NSNumbers
 * @param NSMutableArray of objects type NSNumber
 * @return NSMutableArray of sorted objects
 *
 **/
+(NSMutableArray*) mergeSort: (NSMutableArray*) theArray;

@end
