//
//  Deck.h
//  ICBBlackjack
//
//  Created by Matt Bishop on 11/12/10.
//  Copyright 2010 iphone App development club. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject {
	@private
	NSMutableArray *cards;
}

- (void) shuffle;
- (Card *) draw;
- (NSInteger) cardsRemaining;

@end
