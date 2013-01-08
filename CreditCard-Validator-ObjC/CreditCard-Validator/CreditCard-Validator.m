//
//  CreditCard-Validator.m
//  CreditCard-Validator-ObjC
//
//  Created by Fernando Bass on 1/8/13.
//  Copyright (c) 2013 Fernando Bass. All rights reserved.
//

#define kVISA_TYPE			@"^4[0-9]{3}?"

#import "CreditCard-Validator.h"

@implementation CreditCard_Validator

- (CreditCardType)checkCardWithNumber:(NSString *)cardNumber
{
    if([cardNumber length] < 4) return CreditCardTypeInvalid;
 
    CreditCardType cardType;
    NSRegularExpression *regex;
    NSError *error;
    for(NSUInteger i = 0; i < CreditCardTypeInvalid; ++i) {
		switch(i) {
            case CreditCardTypeVisa:
                cardType = CreditCardTypeVisa;
                regex = [NSRegularExpression regularExpressionWithPattern:kVISA_TYPE options:0 error:&error];
                break;

		}
		NSUInteger matches = [regex numberOfMatchesInString:cardNumber options:0 range:NSMakeRange(0, 4)];
        if(matches == 1) return cardType;
	}
    
    
    return CreditCardTypeInvalid;
}
@end
