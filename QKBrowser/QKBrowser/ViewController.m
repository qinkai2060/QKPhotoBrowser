//
//  ViewController.m
//  QKBrowser
//
//  Created by 秦恺 on 2018/8/15.
//  Copyright © 2018年 秦恺. All rights reserved.
//

#import "ViewController.h"
#import "QKDemoCollectionCell.h"
#import "QKPhotoBrowser.h"
@interface ViewController ()<UICollectionViewDelegate,UICollectionViewDataSource,QKPhotoBrowserDelegate>
@property (nonatomic,strong) UICollectionView *collectionView;
@property (nonatomic,strong) NSArray *dataSourceArr;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.dataSourceArr = @[@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1534400938227&di=2dd6cc0e84e7b0ee1504b9e09e96c4e2&imgtype=0&src=http%3A%2F%2Fphotocdn.sohu.com%2F20150907%2Fmp30906533_1441629699374_2.jpeg",@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1534400938227&di=2dd6cc0e84e7b0ee1504b9e09e96c4e2&imgtype=0&src=http%3A%2F%2Fphotocdn.sohu.com%2F20150907%2Fmp30906533_1441629699374_2.jpeg",@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1534400938227&di=2dd6cc0e84e7b0ee1504b9e09e96c4e2&imgtype=0&src=http%3A%2F%2Fphotocdn.sohu.com%2F20150907%2Fmp30906533_1441629699374_2.jpeg"];
    [self.view addSubview:self.collectionView];
}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
    
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.dataSourceArr.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    QKDemoCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"demoCell" forIndexPath:indexPath];
    cell.urlStr = self.dataSourceArr[indexPath.item];
    return cell;
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    QKPhotoBrowser *photoBrowser = [QKPhotoBrowser new];
    photoBrowser.delegate = self;
    photoBrowser.currentImageIndex = indexPath.item;
    photoBrowser.scrollendIndex = indexPath.item;
    photoBrowser.imageCount =  self.dataSourceArr.count;
    photoBrowser.sourceImagesContainerView = collectionView;
    [photoBrowser show];
}
- (UIImage *)photoBrowser:(QKPhotoBrowser *)browser placeholderImageForIndex:(NSInteger)index
{

    // 站位图 根据开发者情况而定
    QKDemoCollectionCell *view = (QKDemoCollectionCell*)[self.collectionView cellForItemAtIndexPath:[NSIndexPath indexPathForItem:index inSection:0]];

    return view.imageview.image;
    
}
- (NSURL *)photoBrowser:(QKPhotoBrowser *)browser highQualityImageURLForIndex:(NSInteger)index
{
    // 高清URL
    return [NSURL URLWithString:self.dataSourceArr[index]];
}
- (UICollectionView *)collectionView {
    if (!_collectionView) {
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
        flowLayout.minimumLineSpacing = 15;
        flowLayout.minimumInteritemSpacing = 0;
        flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;

        
        flowLayout.itemSize = CGSizeMake(100,100);
        flowLayout.sectionInset = UIEdgeInsetsMake(15, 15, 15, 15);
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height) collectionViewLayout:flowLayout];
        [_collectionView registerClass:[QKDemoCollectionCell class] forCellWithReuseIdentifier:@"demoCell"];
        _collectionView.alwaysBounceVertical = YES;
        _collectionView.showsVerticalScrollIndicator = NO;
        _collectionView.tag = 1000;
        _collectionView.dataSource = self;
        _collectionView.delegate = self;
        _collectionView.backgroundColor = [UIColor whiteColor];
    }
    return _collectionView;
}


@end
