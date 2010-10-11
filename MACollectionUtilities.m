//
//  MACollectionUtilities.m
//  MACollectionUtilities
//
//  Created by Michael Ash on 10/11/10.
//  Copyright 2010 Michael Ash. All rights reserved.
//

#import "MACollectionUtilities.h"


@implementation NSArray (MACollectionUtilities)

- (NSArray *)ma_map: (id (^)(id obj))block
{
    NSMutableArray *array = [NSMutableArray arrayWithCapacity: [self count]];
    for(id obj in self)
        [array addObject: block(obj)];
    return array;
}

- (NSArray *)ma_select: (BOOL (^)(id obj))block
{
    NSMutableArray *array = [NSMutableArray array];
    for(id obj in self)
        if(block(obj))
            [array addObject: obj];
    return array;
}

@end