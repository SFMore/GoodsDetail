//
//  GoodsDetailServiceProvide.m
//  GoodsDetail
//
//  Created by zsf on 2018/5/31.
//  Copyright © 2018年 zsf. All rights reserved.
//

#import "GoodsDetailServiceProvide.h"
#import <ProtocolManager/ProtocolManager.h>
#import <GoodsDetailServiceProtocol/GoodsDetailServiceProtocol.h>
#import "GoodsDetailViewController.h"
@interface GoodsDetailServiceProvide()<GoodsDetailServiceProtocol>


@end

@implementation GoodsDetailServiceProvide
+ (void)load
{
    [ProtocolManager registServiceProvide:[[self alloc]init] forProtocol:@protocol(GoodsDetailServiceProtocol)];
}

- (UIViewController *)goodsDetailViewControllerWithGoodsId:(NSString *)goodsId goodsName:(NSString *)goodsName
{
    return [[GoodsDetailViewController alloc] initWithGoodsId:goodsId goodsName:goodsName];
}

@end
