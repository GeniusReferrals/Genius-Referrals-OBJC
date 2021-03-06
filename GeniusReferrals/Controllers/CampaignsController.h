//
//  CampaignsController.h
//  GeniusReferrals
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ) on 02/18/2017
//
#import <Foundation/Foundation.h>
#import "Configuration.h"
#import "APIHelper.h"
#import "APIError.h"
#import "BaseController.h"
#import "UnirestClient.h"
#import "HttpContext.h"

@interface CampaignsController : BaseController

/**
* Completion block definition for asynchronous call to Get campaign */
typedef void (^CompletedGetCampaign)(BOOL success, HttpContext* context, id response, NSError* error);

/**
* Get a campaign by a given slug.
* @param    accountSlug    Required parameter: The account identifier
* @param    campaignSlug    Required parameter: The campaign identifier
*/
- (void) getCampaignAsyncWithAccountSlug:(NSString*) accountSlug
                campaignSlug:(NSString*) campaignSlug
                completionBlock:(CompletedGetCampaign) onCompleted;

/**
* Completion block definition for asynchronous call to Get Campaigns */
typedef void (^CompletedGetCampaigns)(BOOL success, HttpContext* context, id response, NSError* error);

/**
* Get the list of campaings for a given account.
* @param    accountSlug    Required parameter: The account identifier
* @param    page    Optional parameter: Page number, e.g. 1 would start at the first result, and 10 would start at the tenth result.
* @param    limit    Optional parameter: Maximum number of results to return in the response. Default (10), threshold (100)
* @param    filter    Optional parameter: Allowed fields: name, description, start_date, end_date, is_active (true\|false), created. Use the following delimiters to build your filters params. The vertical bar ('\|') to separate individual filter phrases and a double colon ('::') to separate the names and values. The delimiter of the double colon (':') separates the property name from the comparison value, enabling the comparison value to contain spaces. Example: www.example.com/users?filter='name::todd\|city::denver\|title::grand poobah'
* @param    sort    Optional parameter: Allowed fields: campaign_slug, created, start_date, end_date, is_active. Use sort query-string parameter that contains a delimited set of property names. For each property name, sort in ascending order, and for each property prefixed with a dash ('-') sort in descending order. Separate each property name with a vertical bar ('\|'), which is consistent with the separation of the name\|value pairs in filtering, above. For example, if we want to retrieve users in order of their last name (ascending), first name (ascending) and hire date (descending), the request might look like this www.example.com/users?sort='last_name\|first_name\|-hire_date'
*/
- (void) getCampaignsAsyncWithAccountSlug:(NSString*) accountSlug
                page:(NSNumber*) page
                limit:(NSNumber*) limit
                filter:(NSString*) filter
                sort:(NSString*) sort
                completionBlock:(CompletedGetCampaigns) onCompleted;

@end