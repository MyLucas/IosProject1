//
//  Card.m
//  Matchismo
//
//  Created by Fiona Shen on 2016-08-17.
//  Copyright © 2016 Lucas. All rights reserved.
//

#import "Card.h"

@interface Card()

@end

@implementation Card

@synthesize contents = _contents;

@synthesize chosen = _chosen;
@synthesize matched = _matched;

-(int)match:(NSArray *)otherCards
{
    int score = 0;
    
    for(Card *card in otherCards)
    {
        if([card.contents isEqualToString:self.contents])
        {
            score = 1;
        }
    }
    
    
    return score;
}

/*

-(BOOL)isMatched
{
    return _matched;
}

-(void)setMatched:(BOOL)matched
{
    _matched = matched;
}

-(BOOL)isChosen
{
    return _chosen;
}

-(void)setChosen:(BOOL)chosen
{
    _chosen = chosen;
}


-(NSString*) contents
{
    return _contents;
}

-(void)setContents:(NSString *)contents
{
    _contents = contents;
}
 
*/

@end
