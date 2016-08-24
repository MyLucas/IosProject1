//
//  Card.h
//  Matchismo
//
//  Created by Fiona Shen on 2016-08-17.
//  Copyright © 2016 Lucas. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

-(int)match:(NSArray*)otherCards;

@end
