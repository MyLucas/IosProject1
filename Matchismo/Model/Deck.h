//
//  Deck.h
//  Matchismo
//
//  Created by Fiona Shen on 2016-08-23.
//  Copyright © 2016 Lucas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

-(void)addCard:(Card*)card atTop:(BOOL)atTop;
-(void)addCard:(Card*)card;


-(Card*)drawRandomCard;


@end
