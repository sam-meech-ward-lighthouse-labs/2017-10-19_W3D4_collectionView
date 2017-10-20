//
//  BabyAnimalCollectionViewCell.h
//  BabyAnimals
//
//  Created by Sam Meech-Ward on 2017-10-19.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BabyAnimal.h"

@interface BabyAnimalCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imageVierw;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (nonatomic, strong) BabyAnimal *animal;

@end
