//
//  MainLayer.m
//  magic_bleak
//
//  Created by shirailab on 2013/10/29.
//  Copyright 2013年 shirailab. All rights reserved.
//

#import "MainLayer.h"
#import "Grid.h"

@implementation MainLayer

+(CCScene *) scene
{
	CCScene *scene = [CCScene node];
	MainLayer *layer = [MainLayer node];
	[scene addChild: layer];
	return scene;
}

-(id) init
{
	if( (self=[super init]) ) {
		CCLabelTTF *label = [CCLabelTTF labelWithString:@"My name is akira" fontName:@"Marker Felt" fontSize:64];
        gridArray = [[CCArray array]retain];
        
        
        
        for (int i = 0; i < 9; i++) {
            Grid* g = [Grid node];
            g.position = ccp((i%3 + 0.5) * g.contentSize.width,((int)(i/3)+0.5) * g.contentSize.height);
            
            [self addChild:g];
            
            [gridArray addObject:g];
        }
        
		CGSize size = [[CCDirector sharedDirector] winSize];
		label.position =  ccp( size.width /2 , size.height/2 );
		[self addChild: label];
        
        self.touchEnabled = YES;
        
	}
	return self;
}

-(void) ccTouchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
}

-(void) ccTouchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    
}

-(void) ccTouchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    
}

- (void) dealloc
{
	[super dealloc];
}

@end
