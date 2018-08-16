//
//  QKPlayerLayerView.m
//
//  Created by 秦恺 on 2018/8/16.
//

#import "QKPlayerLayerView.h"
#import <AVFoundation/AVFoundation.h>
@implementation QKPlayerLayerView

+ (Class)layerClass {
    
    return [AVPlayerLayer class];
}


@end
