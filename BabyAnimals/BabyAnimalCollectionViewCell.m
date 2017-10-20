//
//  BabyAnimalCollectionViewCell.m
//  BabyAnimals
//
//  Created by Sam Meech-Ward on 2017-10-19.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "BabyAnimalCollectionViewCell.h"

@implementation BabyAnimalCollectionViewCell

- (void)setAnimal:(BabyAnimal *)animal {
    _animal = animal;
    
    self.label.text = animal.name;
    self.imageVierw.image = [UIImage imageNamed:animal.imageName];
}

@end
