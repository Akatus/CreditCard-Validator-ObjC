//
//  CreditCard-Validator.m
//  CreditCard-Validator-ObjC
//
//  Created by Fernando Bass on 1/8/13.
//  Copyright (c) 2013 Fernando Bass. All rights reserved.
//

#pragma mark - Regex for CreditCard

//Finding or Verification Credit Card Numbers
//http://www.regular-expressions.info/creditcard.html

#define kVISA_TYPE        @"^4[0-9]{3}?"
#define kMASTER_CARD_TYPE @"^5[1-5][0-9]{2}$"
#define kAMEX_TYPE		@"^3[47][0-9]{2}$"
#define kDINERS_CLUB_TYPE	@"^3(?:0[0-5]|[68][0-9])[0-9]$"
#define kDISCOVER_TYPE		@"^6(?:011|5[0-9]{2})$"

#import "CreditCard-Validator.h"

@implementation CreditCard_Validator

+ (CreditCardType)checkCardWithNumber:(NSString *)cardNumber
{
    if([cardNumber length] < 4) return CreditCardTypeUnknown;
    
    CreditCardType cardType;
    NSRegularExpression *regex;
    NSError *error;
    
    for(NSUInteger i = 0; i < CreditCardTypeUnknown; ++i) {
    
        cardType = i;
		
        switch(i) {
            case CreditCardTypeVisa:
                regex = [NSRegularExpression regularExpressionWithPattern:kVISA_TYPE options:0 error:&error];
                break;
            case CreditCardTypeMasterCard:
                regex = [NSRegularExpression regularExpressionWithPattern:kMASTER_CARD_TYPE options:0 error:&error];
                break;
            case CreditCardTypeAmex:
                regex = [NSRegularExpression regularExpressionWithPattern:kAMEX_TYPE options:0 error:&error];
                break;
            case CreditCardTypeDinersClub:
                regex = [NSRegularExpression regularExpressionWithPattern:kDINERS_CLUB_TYPE options:0 error:&error];
                break;
            case CreditCardTypeDiscover:
                regex = [NSRegularExpression regularExpressionWithPattern:kDISCOVER_TYPE options:0 error:&error];
                break;
		}
        
		NSUInteger matches = [regex numberOfMatchesInString:cardNumber options:0 range:NSMakeRange(0, 4)];
        if(matches == 1) return cardType;
        
	}
    
    return CreditCardTypeUnknown;
}
@end
