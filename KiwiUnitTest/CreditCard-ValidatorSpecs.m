#import "Kiwi.h"
#import "CreditCard-Validator.h"

SPEC_BEGIN(CreditCard_ValidatorSpecs)

describe(@"CreditCard-Validator", ^{
    context(@"Check for CreditCard Type", ^{
        it(@"should be a Unknown type", ^{
            [[theValue([CreditCard_Validator checkCardWithNumber:@"0000"]) should] equal:theValue(CreditCardTypeUnknown)];
        });
        
        it(@"should be Visa", ^{
            [[theValue([CreditCard_Validator checkCardWithNumber:@"4012"]) should] equal:theValue(CreditCardTypeVisa)];
        });
        
        it(@"should be MasterCard", ^{
            [[theValue([CreditCard_Validator checkCardWithNumber:@"5453"]) should] equal:theValue(CreditCardTypeMasterCard)];
        });
        
        it(@"should be Amex", ^{
            [[theValue([CreditCard_Validator checkCardWithNumber:@"3434"]) should] equal:theValue(CreditCardTypeAmex)];
        });
        
        it(@"should be DinersClub", ^{
            [[theValue([CreditCard_Validator checkCardWithNumber:@"3001"]) should] equal:theValue(CreditCardTypeDinersClub)];
        });
        
        it(@"should be Discover", ^{
            [[theValue([CreditCard_Validator checkCardWithNumber:@"6511"]) should] equal:theValue(CreditCardTypeDiscover)];
        });
        
        it(@"should not Amex", ^{
            [[theValue([CreditCard_Validator checkCardWithNumber:@"5439129304394532"]) shouldNot] equal:theValue(CreditCardTypeAmex)];
        });
        
        pending(@"should be ELO", nil);
        
        pending(@"should be HiperCard", nil);
    });
    
    context(@"Check for Valid CreditCard", ^{
        it(@"should not be valid", ^{
            [[theValue([CreditCard_Validator checkCreditCardNumber:@"4545232346469999"]) shouldNot] equal:theValue(YES)];
        });
        
        it(@"should be valid", ^{
            [[theValue([CreditCard_Validator checkCreditCardNumber:@"4012001038443335"]) should] equal:theValue(YES)];
        });
        
        it(@"should not be invalid", ^{
            [[theValue([CreditCard_Validator checkCreditCardNumber:@"4012001038443335"]) shouldNot] equal:theValue(NO)];
        });
    });
});

SPEC_END
