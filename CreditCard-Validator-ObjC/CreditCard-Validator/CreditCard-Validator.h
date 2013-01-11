//
//  CreditCard-Validator.h
//  CreditCard-Validator-ObjC
//
//  Created by Fernando Bass on 1/8/13.
//  Copyright (c) 2013 Fernando Bass. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, CreditCardType) {
    CreditCardTypeVisa,
    CreditCardTypeMasterCard,
    CreditCardTypeDinersClub,
    CreditCardTypeAmex,
    CreditCardTypeDiscover,
    CreditCardTypeUnknown
};

@interface CreditCard_Validator : NSObject

+ (CreditCardType)checkCardWithNumber:(NSString *)cardNumber;
+ (BOOL)checkCreditCardNumber:(NSString *)cardNum;

@end
