//
//  OverlayView.h
//  OverlayTest
//
//  Created by USER on 2017/04/16.
//  Copyright © 2017年 masahiro okamura. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <OpenGLES/ES2/gl.h>
#import <OpenGLES/ES2/glext.h>


@interface OverlayView : UIView <AVPlayerItemOutputPullDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UIPopoverControllerDelegate>

@property GLfloat preferredRotation;
@property CGSize presentationRect;
@property GLfloat chromaThreshold;
@property GLfloat lumaThreshold;

- (void)setupGL;
- (void)displayPixelBuffer:(CVPixelBufferRef)pixelBuffer;


- (IBAction)testButtonTapped:(id)sender;

@end
