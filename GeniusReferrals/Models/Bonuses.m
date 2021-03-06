//
//  Bonuses.m
//  GeniusReferrals
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ) on 02/18/2017
//
#import "Bonuses.h"

@implementation Bonuses

/**
* The referral's token. Usually the one that completed the purchase, or trigger an event.
*/
@synthesize advocateToken;

/**
* The reference number for this request. Usually the order_id, payment_id, or timestamp.
*/
@synthesize reference;

/**
* The payment amount the referrals has made. Required for a percentage based campaign.
*/
@synthesize paymentAmount;



/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"advocate_token": @"advocateToken",
        @"reference": @"reference",
        @"payment_amount": @"paymentAmount"  
    }];

    return map;
}

/**
* Key mapper for json serialization and deserialization
*/
+(JSONKeyMapper*) keyMapper
{ 
  return [[JSONKeyMapper alloc] initWithDictionary: [self keyMap]];
}

/**
* Helps avoiding deserialization errors when one or more properties are missing
* @returns	True, indicating that all properties are optional for deserialization
*/
+(BOOL)propertyIsOptional:(NSString*) propertyName
{
    return YES;
}

@end