//
//  BabyAnimal.h
//  BabyAnimals
//
//  Created by Sam Meech-Ward on 2017-10-19.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BabyAnimal : NSObject

- (instancetype) initWithName:(NSString *)name imageName:(NSString *)imageName;

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *imageName;


@end
