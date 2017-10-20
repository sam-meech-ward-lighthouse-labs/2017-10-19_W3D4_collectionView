//
//  BabyAnimal.m
//  BabyAnimals
//
//  Created by Sam Meech-Ward on 2017-10-19.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "BabyAnimal.h"

@implementation BabyAnimal

- (instancetype) initWithName:(NSString *)name imageName:(NSString *)imageName {
    self = [super init];
    if (self) {
        _imageName = imageName;
        _name = name;
    }
    return self;
}

@end
