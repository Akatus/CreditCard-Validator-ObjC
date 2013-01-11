CreditCard Validator
=========================

A simple Objective-C validator for CreditCards using Luhn Algorithm [http://en.wikipedia.org/wiki/Luhn_algorithm](http://en.wikipedia.org/wiki/Luhn_algorithm)
And brand checks using Regex [http://www.regular-expressions.info/creditcard.html](http://www.regular-expressions.info/creditcard.html)

Check Brands
===

### Worldwide

* Visa
* Master Card
* DinersClub
* Amex
* Discover

### <s>Credit Card Brands on Brasil</s>

Not implemented yet!
* <s>Elo</s>
* <s>HiperCard</s>

How to Use
===

#### Install 

Copy CreditCard-Validator folder in your project
	
	#import "CreditCard-Validator.h"

OR

Using Cocoapods

	Not published yet!
	
#### Check Brand

Check Brand returns a CreditCardBrand 

	[CreditCard_Validator checkCardBrandWithNumber:@"6511324312345421"];

#### Check card number 

Check Card Number return BOOL YES or NO

	[CreditCard_Validator checkCreditCardNumber:@"4545232346469999"];
	

### License
===
The MIT License (MIT)
Copyright (c) 2013 [Akatus](http://akatus.com)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.