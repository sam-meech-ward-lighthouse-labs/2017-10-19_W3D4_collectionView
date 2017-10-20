//
//  ViewController.m
//  BabyAnimals
//
//  Created by Sam Meech-Ward on 2017-10-19.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "ViewController.h"
#import "BabyAnimal.h"
#import "BabyAnimalCollectionViewCell.h"
#import "ZooCollectionViewLayout.h"

@interface ViewController ()

@property (nonatomic, strong) NSMutableArray <BabyAnimal *>*animals;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation ViewController

- (void)setupAnimals {
    BabyAnimal *possum = [[BabyAnimal alloc] initWithName:@"Possum" imageName:@"possum"];
    BabyAnimal *penguin = [[BabyAnimal alloc] initWithName:@"Penguin" imageName:@"penguin"];
    BabyAnimal *pangolin = [[BabyAnimal alloc] initWithName:@"Pangolin" imageName:@"pangolin"];
    
    self.animals = @[pangolin, penguin, possum, pangolin, penguin, possum, pangolin, penguin, possum, pangolin, penguin, possum, pangolin, penguin, possum, pangolin, penguin, possum, pangolin, penguin, possum, pangolin, penguin, possum,pangolin, penguin, possum].mutableCopy;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setupAnimals];
    
    ZooCollectionViewLayout *customLayout = [[ZooCollectionViewLayout alloc] init];
    self.collectionView.collectionViewLayout = customLayout;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Collection View


- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    BabyAnimalCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"animal-cell" forIndexPath:indexPath];
    BabyAnimal *animal = self.animals[indexPath.item];
    cell.animal = animal;
    
    return cell;
}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.animals.count;
}

#pragma mark - Actions

- (IBAction)addPorcupine:(id)sender {
    BabyAnimal *porcupine = [[BabyAnimal alloc] initWithName:@"Porcupine" imageName:@"porcupine"];
    
    [self.animals insertObject:porcupine atIndex:0];
    
    NSIndexPath *indexPath = [NSIndexPath indexPathForItem:0 inSection:0];
    [self.collectionView insertItemsAtIndexPaths:@[indexPath]];
}

@end
