//
//  Referral.m
//  GeniusReferrals
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ) on 02/17/2017
//
#import "Referral.h"

@implementation Referral

/**
* The referrals token
*/
@synthesize referredAdvocateToken;

/**
* The referral origin identifier
*/
@synthesize referralOriginSlug;

/**
* The campaign identifier
*/
@synthesize campaignSlug;

/**
* The http_referrer URL
*/
@synthesize httpReferer;



/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"referred_advocate_token": @"referredAdvocateToken",
        @"referral_origin_slug": @"referralOriginSlug",
        @"campaign_slug": @"campaignSlug",
        @"http_referer": @"httpReferer"  
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