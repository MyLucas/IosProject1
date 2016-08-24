//
//  PlayingCardDeck.m
//  Matchismo
//
//  Created by Fiona Shen on 2016-08-23.
//  Copyright © 2016 Lucas. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck


-(instancetype)init
{
    self = [super init];
    
    if(self)
    {
        for(NSString *suit in [PlayingCard validSuits])
        {
            for(NSInteger rank = 1;rank<=[PlayingCard maxRank];rank++)
            {
                PlayingCard *card = [[PlayingCard alloc]init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card];
            }
        }
    }
    
    return self;
}

@end
