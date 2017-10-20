//
//  ZooCollectionViewLayout.m
//  BabyAnimals
//
//  Created by Sam Meech-Ward on 2017-10-19.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "ZooCollectionViewLayout.h"

@implementation ZooCollectionViewLayout

- (void)prepareLayout {
    // Setup all the initial values
    
    self.itemSize = CGSizeMake(150, 150);
    self.sectionInset = UIEdgeInsetsZero;
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.minimumInteritemSpacing = CGFLOAT_MAX;
    self.minimumLineSpacing = 100.0;
}

- (NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect
{
    NSArray<UICollectionViewLayoutAttributes *> *superAttrs = [super layoutAttributesForElementsInRect:rect];
    
    // Need to copy attrs from super to avoid cached frame mismatch
    NSMutableArray<UICollectionViewLayoutAttributes *> *newAttrs = [[NSMutableArray alloc] init];
    
    for (UICollectionViewLayoutAttributes *superAttr in superAttrs) {
        UICollectionViewLayoutAttributes *attributes = [superAttr copy];
        [newAttrs addObject:attributes];
        
        // We can now modify attributes to modify the appearance.
        attributes.transform = CGAffineTransformMakeRotation(attributes.center.x);
        attributes.transform = CGAffineTransformScale(attributes.transform, 1.0, arc4random_uniform(200)/100.0+1);
    }
    
    return newAttrs;
}

@end
