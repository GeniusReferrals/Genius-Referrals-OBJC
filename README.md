# Getting started

## How to Build


The generated code has dependencies over external libraries like UniRest. These dependencies are defined in the ```PodFile``` file that comes with the SDK. 
To resolve these dependencies, we use the Cocoapods package manager.
Visit https://guides.cocoapods.org/using/getting-started.html to setup Cocoapods on your system.
Open command prompt and type ```pod --version```. This should display the current version of Cocoapods installed if the installation was successful.

Using command line, navigate to the directory containing the generated files (including ```PodFile```) for the SDK. 
Run the command ```pod install```. This should install all the required dependencies and create the ```pods``` directory in your project directory.

![Installing dependencies using Cocoapods](https://apidocs.io/illustration/objc?step=AddDependencies&workspaceFolder=Genius%20Referrals-ObjC&workspaceName=GeniusReferrals&projectName=GeniusReferrals&rootNamespace=GeniusReferrals)

Open the project workspace using the (GeniusReferrals.xcworkspace) file. Invoke the build process using `Command(⌘)+B` shortcut key or using the `Build` menu as shown below.

![Building SDK using Xcode](https://apidocs.io/illustration/objc?step=BuildSDK&workspaceFolder=Genius%20Referrals-ObjC&workspaceName=GeniusReferrals&projectName=GeniusReferrals&rootNamespace=GeniusReferrals)


## How to Use

The generated code is a Cocoa Touch Static Library which can be used in any iOS project. The support for these generated libraries go all the way back to iOS 6.

The following section explains how to use the GeniusReferrals library in a new iOS project.     
### 1. Starting a new project
To start a new project, left-click on the ```Create a new Xcode project```.
![Create Test Project - Step 1](https://apidocs.io/illustration/objc?step=Test1&workspaceFolder=Genius%20Referrals-ObjC&workspaceName=GeniusReferrals&projectName=GeniusReferrals&rootNamespace=GeniusReferrals)

Next, choose **Single View Application** and click ```Next```.
![Create Test Project - Step 2](https://apidocs.io/illustration/objc?step=Test2&workspaceFolder=Genius%20Referrals-ObjC&workspaceName=GeniusReferrals&projectName=GeniusReferrals&rootNamespace=GeniusReferrals)

Provide **Test-Project** as the product name click ```Next```.
![Create Test Project - Step 3](https://apidocs.io/illustration/objc?step=Test3&workspaceFolder=Genius%20Referrals-ObjC&workspaceName=GeniusReferrals&projectName=GeniusReferrals&rootNamespace=GeniusReferrals)

Choose the desired location of your project folder and click ```Create```.
![Create Test Project - Step 4](https://apidocs.io/illustration/objc?step=Test4&workspaceFolder=Genius%20Referrals-ObjC&workspaceName=GeniusReferrals&projectName=GeniusReferrals&rootNamespace=GeniusReferrals)

### 2. Adding the static library dependency
To add this dependency open a terminal and navigate to your project folder. Next, input ```pod init``` and press enter.
![Add dependency - Step 1](https://apidocs.io/illustration/objc?step=Add0&workspaceFolder=Genius%20Referrals-ObjC&workspaceName=GeniusReferrals&projectName=GeniusReferrals&rootNamespace=GeniusReferrals)

Next, open the newly created ```PodFile``` in your favourite text editor. Add the following line : pod 'GeniusReferrals', :path => 'Vendor/GeniusReferrals'
![Add dependency - Step 2](https://apidocs.io/illustration/objc?step=Add1&workspaceFolder=Genius%20Referrals-ObjC&workspaceName=GeniusReferrals&projectName=GeniusReferrals&rootNamespace=GeniusReferrals)

Execute `pod install` from terminal to install the dependecy in your project. This would add the dependency to the newly created test project.
![Add dependency - Step 3](https://apidocs.io/illustration/objc?step=Add2&workspaceFolder=Genius%20Referrals-ObjC&workspaceName=GeniusReferrals&projectName=GeniusReferrals&rootNamespace=GeniusReferrals)


## How to Test

Unit tests in this SDK can be run using Xcode. 

First build the SDK as shown in the steps above and naivgate to the project directory and open the GeniusReferrals.xcworkspace file.

Go to the test explorer in Xcode as shown in the picture below and click on `run tests` from the menu. 
![Run tests](https://apidocs.io/illustration/objc?step=RunTests&workspaceFolder=Genius%20Referrals-ObjC&workspaceName=GeniusReferrals&projectName=GeniusReferrals&rootNamespace=GeniusReferrals)


## Initialization

### Authentication
In order to setup authentication and initialization of the API client, you need the following information.

| Parameter | Description |
|-----------|-------------|
| contentType | The content type |
| xAuthToken | Your API Token, you can get your token here https://www.geniusreferrals.com/en/settings/api-access |



Configuration variables can be set as following.
```Objc
// Configuration parameters and credentials
Configuration_ContentType = "application/json"; // The content type
Configuration_XAuthToken = "3b9d11374b602fb47b987dff90f1c5940a1f377f"; // Your API Token, you can get your token here https://www.geniusreferrals.com/en/settings/api-access

```

## Class Reference

### <a name="list_of_controllers"></a>List of Controllers

* [roots](#roots)
* [authentications](#authentications)
* [advocates](#advocates)
* [accounts](#accounts)
* [reports](#reports)
* [referrals](#referrals)
* [redemptionrequests](#redemptionrequests)
* [bonuses](#bonuses)
* [campaigns](#campaigns)

### <a name="roots"></a>![Class: ](https://apidocs.io/img/class.png ".roots") roots

#### Get singleton instance
```objc
Roots* roots = [[Roots alloc]init] ;
```

#### <a name="get_root_with_completion_block"></a>![Method: ](https://apidocs.io/img/method.png ".roots.getRootWithCompletionBlock") getRootWithCompletionBlock

> The root of the API


```objc
function getRootWithCompletionBlock:(CompletedGetRoot) onCompleted()
```



#### Example Usage

```objc

    [self.roots getRootWithCompletionBlock:  ^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

### <a name="authentications"></a>![Class: ](https://apidocs.io/img/class.png ".authentications") authentications

#### Get singleton instance
```objc
Authentications* authentications = [[Authentications alloc]init] ;
```

#### <a name="get_authentications_with_completion_block"></a>![Method: ](https://apidocs.io/img/method.png ".authentications.getAuthenticationsWithCompletionBlock") getAuthenticationsWithCompletionBlock

> Allow clients to test authentication on Genius Referrals platform.


```objc
function getAuthenticationsWithCompletionBlock:(CompletedGetAuthentications) onCompleted()
```



#### Example Usage

```objc

    [self.authentications getAuthenticationsWithCompletionBlock:  ^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

### <a name="advocates"></a>![Class: ](https://apidocs.io/img/class.png ".advocates") advocates

#### Get singleton instance
```objc
Advocates* advocates = [[Advocates alloc]init] ;
```

#### <a name="delete_advocate_async_with_account_slug"></a>![Method: ](https://apidocs.io/img/method.png ".advocates.deleteAdvocateAsyncWithAccountSlug") deleteAdvocateAsyncWithAccountSlug

> Delete an advocate


```objc
function deleteAdvocateAsyncWithAccountSlug:(NSString*) accountSlug
                advocateToken:(NSString*) advocateToken
                completionBlock:(CompletedDeleteAdvocate) onCompleted(accountSlug advocateToken : advocateToken)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accountSlug |  ``` Required ```  | The account identifier |
| advocateToken |  ``` Required ```  | The advocate's token |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* accountSlug = @"account_slug";
    NSString* advocateToken = @"advocate_token";

    [self.advocates deleteAdvocateAsyncWithAccountSlug: accountSlug advocateToken : advocateToken  completionBlock:^(BOOL success, HttpContext* context, NSError* error) { 
       //Add code here
    }];
```


#### <a name="put_advocate_async_with_account_slug"></a>![Method: ](https://apidocs.io/img/method.png ".advocates.putAdvocateAsyncWithAccountSlug") putAdvocateAsyncWithAccountSlug

> Update an advocate.


```objc
function putAdvocateAsyncWithAccountSlug:(NSString*) accountSlug
                advocateToken:(NSString*) advocateToken
                advocateForm:(AdvocateForm*) advocateForm
                completionBlock:(CompletedPutAdvocate) onCompleted(accountSlug advocateToken : advocateToken advocateForm : advocateForm)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accountSlug |  ``` Required ```  | The account identifier |
| advocateToken |  ``` Required ```  | The advocate's token |
| advocateForm |  ``` Required ```  | The body of the request |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* accountSlug = @"account_slug";
    NSString* advocateToken = @"advocate_token";
    AdvocateForm* advocateForm = [[AdvocateForm alloc]init];

    [self.advocates putAdvocateAsyncWithAccountSlug: accountSlug advocateToken : advocateToken advocateForm : advocateForm  completionBlock:^(BOOL success, HttpContext* context, NSError* error) { 
       //Add code here
    }];
```


#### <a name="post_advocate_async_with_account_slug"></a>![Method: ](https://apidocs.io/img/method.png ".advocates.postAdvocateAsyncWithAccountSlug") postAdvocateAsyncWithAccountSlug

> Create a new advocate.


```objc
function postAdvocateAsyncWithAccountSlug:(NSString*) accountSlug
                advocateForm:(AdvocateForm*) advocateForm
                completionBlock:(CompletedPostAdvocate) onCompleted(accountSlug advocateForm : advocateForm)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accountSlug |  ``` Required ```  | The account identifier |
| advocateForm |  ``` Required ```  | The body of the request |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* accountSlug = @"account_slug";
    AdvocateForm* advocateForm = [[AdvocateForm alloc]init];

    [self.advocates postAdvocateAsyncWithAccountSlug: accountSlug advocateForm : advocateForm  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_advocate_async_with_account_slug"></a>![Method: ](https://apidocs.io/img/method.png ".advocates.getAdvocateAsyncWithAccountSlug") getAdvocateAsyncWithAccountSlug

> Get an advocate by a given token.


```objc
function getAdvocateAsyncWithAccountSlug:(NSString*) accountSlug
                advocateToken:(NSString*) advocateToken
                completionBlock:(CompletedGetAdvocate) onCompleted(accountSlug advocateToken : advocateToken)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accountSlug |  ``` Required ```  | The account identifier |
| advocateToken |  ``` Required ```  | The advocate's token |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* accountSlug = @"account_slug";
    NSString* advocateToken = @"advocate_token";

    [self.advocates getAdvocateAsyncWithAccountSlug: accountSlug advocateToken : advocateToken  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="delete_advocates_async_with_account_slug"></a>![Method: ](https://apidocs.io/img/method.png ".advocates.deleteAdvocatesAsyncWithAccountSlug") deleteAdvocatesAsyncWithAccountSlug

> Delete all advocates


```objc
function deleteAdvocatesAsyncWithAccountSlug:(NSString*) accountSlug
                completionBlock:(CompletedDeleteAdvocates) onCompleted(accountSlug)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accountSlug |  ``` Required ```  | The account identifier |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* accountSlug = @"account_slug";

    [self.advocates deleteAdvocatesAsyncWithAccountSlug: accountSlug  completionBlock:^(BOOL success, HttpContext* context, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_advocates_async_with_account_slug"></a>![Method: ](https://apidocs.io/img/method.png ".advocates.getAdvocatesAsyncWithAccountSlug") getAdvocatesAsyncWithAccountSlug

> Get the list of advocates


```objc
function getAdvocatesAsyncWithAccountSlug:(NSString*) accountSlug
                page:(NSNumber*) page
                limit:(NSNumber*) limit
                filter:(NSString*) filter
                sort:(NSString*) sort
                completionBlock:(CompletedGetAdvocates) onCompleted(accountSlug page : page limit : limit filter : filter sort : sort)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accountSlug |  ``` Required ```  | The account identifier |
| page |  ``` Optional ```  ``` DefaultValue ```  | Page number, e.g. 1 would start at the first result, and 10 would start at the tenth result. |
| limit |  ``` Optional ```  ``` DefaultValue ```  | Maximum number of results to return in the response. Default (10), threshold (100) |
| filter |  ``` Optional ```  | Allowed fields: name, lastname, email, advocate_token, bonus_exchange_method_slug, campaign_slug, can_refer, is_referral, from, to, created. Use the following delimiters to build your filters params. The vertical bar ('\|') to separate individual filter phrases and a double colon ('::') to separate the names and values. The delimiter of the double colon (':') separates the property name from the comparison value, enabling the comparison value to contain spaces. Example: www.example.com/users?filter='name::todd\|city::denver\|title::grand poobah' |
| sort |  ``` Optional ```  | Allowed fields: name, lastname, email, created. Use sort query-string parameter that contains a delimited set of property names. For each property name, sort in ascending order, and for each property prefixed with a dash ('-') sort in descending order. Separate each property name with a vertical bar ('\|'), which is consistent with the separation of the name\|value pairs in filtering, above. For example, if we want to retrieve users in order of their last name (ascending), first name (ascending) and hire date (descending), the request might look like this www.example.com/users?sort='last_name\|first_name\|-hire_date' |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* accountSlug = @"account_slug";
    NSNumber* page = 193;
    NSNumber* limit = 193;
    NSString* filter = @"filter";
    NSString* sort = @"sort";

    [self.advocates getAdvocatesAsyncWithAccountSlug: accountSlug page : page limit : limit filter : filter sort : sort  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="patch_advocate_async_with_account_slug"></a>![Method: ](https://apidocs.io/img/method.png ".advocates.patchAdvocateAsyncWithAccountSlug") patchAdvocateAsyncWithAccountSlug

> Update partial elements of an advocate.


```objc
function patchAdvocateAsyncWithAccountSlug:(NSString*) accountSlug
                advocateToken:(NSString*) advocateToken
                advocatePatchForm:(NSArray<AdvocatePatchForm> *) advocatePatchForm
                completionBlock:(CompletedPatchAdvocate) onCompleted(accountSlug advocateToken : advocateToken advocatePatchForm : advocatePatchForm)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accountSlug |  ``` Required ```  | The account identifier |
| advocateToken |  ``` Required ```  | The advocate's token |
| advocatePatchForm |  ``` Required ```  ``` Collection ```  | The body of the request |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* accountSlug = @"account_slug";
    NSString* advocateToken = @"advocate_token";
    NSArray<AdvocatePatchForm> * advocatePatchForm = (NSArray<AdvocatePatchForm>*) [AdvocatePatchForm arrayOfModelsFromDictionaries:
                [APIHelper jsonDeserializeArray: @"nil"] error: nil];

    [self.advocates patchAdvocateAsyncWithAccountSlug: accountSlug advocateToken : advocateToken advocatePatchForm : advocatePatchForm  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

### <a name="accounts"></a>![Class: ](https://apidocs.io/img/class.png ".accounts") accounts

#### Get singleton instance
```objc
Accounts* accounts = [[Accounts alloc]init] ;
```

#### <a name="get_account_async_with_account_slug"></a>![Method: ](https://apidocs.io/img/method.png ".accounts.getAccountAsyncWithAccountSlug") getAccountAsyncWithAccountSlug

> Get an account by a given slug.


```objc
function getAccountAsyncWithAccountSlug:(NSString*) accountSlug
                completionBlock:(CompletedGetAccount) onCompleted(accountSlug)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accountSlug |  ``` Required ```  | The account identifier |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* accountSlug = @"account_slug";

    [self.accounts getAccountAsyncWithAccountSlug: accountSlug  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_accounts_async_with_page"></a>![Method: ](https://apidocs.io/img/method.png ".accounts.getAccountsAsyncWithPage") getAccountsAsyncWithPage

> Get the list of accounts.


```objc
function getAccountsAsyncWithPage:(NSNumber*) page
                limit:(NSNumber*) limit
                filter:(NSString*) filter
                sort:(NSString*) sort
                completionBlock:(CompletedGetAccounts) onCompleted(page limit : limit filter : filter sort : sort)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | Page number, e.g. 1 would start at the first result, and 10 would start at the tenth result. |
| limit |  ``` Optional ```  | Maximum number of results to return in the response. Default (10), threshold (100) |
| filter |  ``` Optional ```  | Allowed fields: name. Use the following delimiters to build your filters params. The vertical bar ('\|') to separate individual filter phrases and a double colon ('::') to separate the names and values. The delimiter of the double colon (':') separates the property name from the comparison value, enabling the comparison value to contain spaces. Example: www.example.com/users?filter='name::todd\|city::denver\|title::grand poobah' |
| sort |  ``` Optional ```  | Allowed fields: name, created. Use sort query-string parameter that contains a delimited set of property names. For each property name, sort in ascending order, and for each property prefixed with a dash ('-') sort in descending order. Separate each property name with a vertical bar ('\|'), which is consistent with the separation of the name\|value pairs in filtering, above. For example, if we want to retrieve users in order of their last name (ascending), first name (ascending) and hire date (descending), the request might look like this www.example.com/users?sort=last_name\|first_name\|-hire_date |





#### Example Usage

```objc
    // Parameters for the API call
    NSNumber* page = 193;
    NSNumber* limit = 193;
    NSString* filter = @"filter";
    NSString* sort = @"sort";

    [self.accounts getAccountsAsyncWithPage: page limit : limit filter : filter sort : sort  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

### <a name="reports"></a>![Class: ](https://apidocs.io/img/class.png ".reports") reports

#### Get singleton instance
```objc
Reports* reports = [[Reports alloc]init] ;
```

#### <a name="get_referrals_summary_per_origin_async_with_advocate_token"></a>![Method: ](https://apidocs.io/img/method.png ".reports.getReferralsSummaryPerOriginAsyncWithAdvocateToken") getReferralsSummaryPerOriginAsyncWithAdvocateToken

> Get referrals summary per referral origin.


```objc
function getReferralsSummaryPerOriginAsyncWithAdvocateToken:(NSString*) advocateToken
                completionBlock:(CompletedGetReferralsSummaryPerOrigin) onCompleted(advocateToken)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| advocateToken |  ``` Required ```  | The advocate's token |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* advocateToken = @"advocate_token";

    [self.reports getReferralsSummaryPerOriginAsyncWithAdvocateToken: advocateToken  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_bonuses_summary_per_origin_async_with_advocate_token"></a>![Method: ](https://apidocs.io/img/method.png ".reports.getBonusesSummaryPerOriginAsyncWithAdvocateToken") getBonusesSummaryPerOriginAsyncWithAdvocateToken

> Get bonuses summary per referral origin.


```objc
function getBonusesSummaryPerOriginAsyncWithAdvocateToken:(NSString*) advocateToken
                completionBlock:(CompletedGetBonusesSummaryPerOrigin) onCompleted(advocateToken)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| advocateToken |  ``` Required ```  | The advocate's token |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* advocateToken = @"advocate_token";

    [self.reports getBonusesSummaryPerOriginAsyncWithAdvocateToken: advocateToken  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_top_advocates_async_with_account_slug"></a>![Method: ](https://apidocs.io/img/method.png ".reports.getTopAdvocatesAsyncWithAccountSlug") getTopAdvocatesAsyncWithAccountSlug

> Get top 10 advocates.


```objc
function getTopAdvocatesAsyncWithAccountSlug:(NSString*) accountSlug
                campaignSlug:(NSString*) campaignSlug
                limit:(NSNumber*) limit
                from:(NSDate*) from
                to:(NSDate*) to
                completionBlock:(CompletedGetTopAdvocates) onCompleted(accountSlug campaignSlug : campaignSlug limit : limit from : from to : to)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accountSlug |  ``` Optional ```  | The account identifier |
| campaignSlug |  ``` Optional ```  | The campaign identifier |
| limit |  ``` Optional ```  | Maximum number of results to return in the response. Default (10) |
| from |  ``` Optional ```  | The datetime were the range of the search starts |
| to |  ``` Optional ```  | The datetime were the range of the search stops |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* accountSlug = @"account_slug";
    NSString* campaignSlug = @"campaign_slug";
    NSNumber* limit = 193;
    NSDate* from = [NSDate date];
    NSDate* to = [NSDate date];

    [self.reports getTopAdvocatesAsyncWithAccountSlug: accountSlug campaignSlug : campaignSlug limit : limit from : from to : to  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_share_daily_participation_async_with_account_slug"></a>![Method: ](https://apidocs.io/img/method.png ".reports.getShareDailyParticipationAsyncWithAccountSlug") getShareDailyParticipationAsyncWithAccountSlug

> Get share daily participation.


```objc
function getShareDailyParticipationAsyncWithAccountSlug:(NSString*) accountSlug
                campaignSlug:(NSString*) campaignSlug
                advocateToken:(NSString*) advocateToken
                from:(NSDate*) from
                to:(NSDate*) to
                completionBlock:(CompletedGetShareDailyParticipation) onCompleted(accountSlug campaignSlug : campaignSlug advocateToken : advocateToken from : from to : to)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accountSlug |  ``` Optional ```  | The account identifier |
| campaignSlug |  ``` Optional ```  | The campaign identifier |
| advocateToken |  ``` Optional ```  | The advocate's token |
| from |  ``` Optional ```  | The datetime were the range of the search starts |
| to |  ``` Optional ```  | The datetime were the range of the search stops |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* accountSlug = @"account_slug";
    NSString* campaignSlug = @"campaign_slug";
    NSString* advocateToken = @"advocate_token";
    NSDate* from = [NSDate date];
    NSDate* to = [NSDate date];

    [self.reports getShareDailyParticipationAsyncWithAccountSlug: accountSlug campaignSlug : campaignSlug advocateToken : advocateToken from : from to : to  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_referral_daily_participation_async_with_account_slug"></a>![Method: ](https://apidocs.io/img/method.png ".reports.getReferralDailyParticipationAsyncWithAccountSlug") getReferralDailyParticipationAsyncWithAccountSlug

> Get referral daily participation.


```objc
function getReferralDailyParticipationAsyncWithAccountSlug:(NSString*) accountSlug
                campaignSlug:(NSString*) campaignSlug
                advocateToken:(NSString*) advocateToken
                from:(NSDate*) from
                to:(NSDate*) to
                completionBlock:(CompletedGetReferralDailyParticipation) onCompleted(accountSlug campaignSlug : campaignSlug advocateToken : advocateToken from : from to : to)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accountSlug |  ``` Optional ```  | The account identifier |
| campaignSlug |  ``` Optional ```  | The campaign identifier |
| advocateToken |  ``` Optional ```  | The advocate's token |
| from |  ``` Optional ```  | The datetime were the range of the search starts |
| to |  ``` Optional ```  | The datetime were the range of the search stops |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* accountSlug = @"account_slug";
    NSString* campaignSlug = @"campaign_slug";
    NSString* advocateToken = @"advocate_token";
    NSDate* from = [NSDate date];
    NSDate* to = [NSDate date];

    [self.reports getReferralDailyParticipationAsyncWithAccountSlug: accountSlug campaignSlug : campaignSlug advocateToken : advocateToken from : from to : to  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_click_daily_participation_async_with_account_slug"></a>![Method: ](https://apidocs.io/img/method.png ".reports.getClickDailyParticipationAsyncWithAccountSlug") getClickDailyParticipationAsyncWithAccountSlug

> Get click daily participation.


```objc
function getClickDailyParticipationAsyncWithAccountSlug:(NSString*) accountSlug
                campaignSlug:(NSString*) campaignSlug
                advocateToken:(NSString*) advocateToken
                from:(NSDate*) from
                to:(NSDate*) to
                completionBlock:(CompletedGetClickDailyParticipation) onCompleted(accountSlug campaignSlug : campaignSlug advocateToken : advocateToken from : from to : to)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accountSlug |  ``` Optional ```  | The account identifier |
| campaignSlug |  ``` Optional ```  | The campaign identifier |
| advocateToken |  ``` Optional ```  | The advocate's token |
| from |  ``` Optional ```  | The datetime were the range of the search starts |
| to |  ``` Optional ```  | The datetime were the range of the search stops |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* accountSlug = @"account_slug";
    NSString* campaignSlug = @"campaign_slug";
    NSString* advocateToken = @"advocate_token";
    NSDate* from = [NSDate date];
    NSDate* to = [NSDate date];

    [self.reports getClickDailyParticipationAsyncWithAccountSlug: accountSlug campaignSlug : campaignSlug advocateToken : advocateToken from : from to : to  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_bonuses_daily_given_async_with_account_slug"></a>![Method: ](https://apidocs.io/img/method.png ".reports.getBonusesDailyGivenAsyncWithAccountSlug") getBonusesDailyGivenAsyncWithAccountSlug

> Get bonuses daily given.


```objc
function getBonusesDailyGivenAsyncWithAccountSlug:(NSString*) accountSlug
                campaignSlug:(NSString*) campaignSlug
                advocateToken:(NSString*) advocateToken
                from:(NSDate*) from
                to:(NSDate*) to
                completionBlock:(CompletedGetBonusesDailyGiven) onCompleted(accountSlug campaignSlug : campaignSlug advocateToken : advocateToken from : from to : to)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accountSlug |  ``` Optional ```  | The account identifier |
| campaignSlug |  ``` Optional ```  | The campaign identifier |
| advocateToken |  ``` Optional ```  | The advocate identifier |
| from |  ``` Optional ```  | The datetime were the range of the search starts |
| to |  ``` Optional ```  | The datetime were the range of the search stops |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* accountSlug = @"account_slug";
    NSString* campaignSlug = @"campaign_slug";
    NSString* advocateToken = @"advocate_token";
    NSDate* from = [NSDate date];
    NSDate* to = [NSDate date];

    [self.reports getBonusesDailyGivenAsyncWithAccountSlug: accountSlug campaignSlug : campaignSlug advocateToken : advocateToken from : from to : to  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

### <a name="referrals"></a>![Class: ](https://apidocs.io/img/class.png ".referrals") referrals

#### Get singleton instance
```objc
Referrals* referrals = [[Referrals alloc]init] ;
```

#### <a name="get_referral_origin_async_with_referral_origin_slug"></a>![Method: ](https://apidocs.io/img/method.png ".referrals.getReferralOriginAsyncWithReferralOriginSlug") getReferralOriginAsyncWithReferralOriginSlug

> Get a referral origin by a given slug.


```objc
function getReferralOriginAsyncWithReferralOriginSlug:(NSString*) referralOriginSlug
                completionBlock:(CompletedGetReferralOrigin) onCompleted(referralOriginSlug)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| referralOriginSlug |  ``` Required ```  | The referral origin identifier |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* referralOriginSlug = @"referral_origin_slug";

    [self.referrals getReferralOriginAsyncWithReferralOriginSlug: referralOriginSlug  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_referral_origins_with_completion_block"></a>![Method: ](https://apidocs.io/img/method.png ".referrals.getReferralOriginsWithCompletionBlock") getReferralOriginsWithCompletionBlock

> Get referral origins. This is needed when creating (POST) a new referral, as referral_origin_slug refers to one of this origins.


```objc
function getReferralOriginsWithCompletionBlock:(CompletedGetReferralOrigins) onCompleted()
```



#### Example Usage

```objc

    [self.referrals getReferralOriginsWithCompletionBlock:  ^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_referral_async_with_account_slug"></a>![Method: ](https://apidocs.io/img/method.png ".referrals.getReferralAsyncWithAccountSlug") getReferralAsyncWithAccountSlug

> Get a referral by a given id.


```objc
function getReferralAsyncWithAccountSlug:(NSString*) accountSlug
                advocateToken:(NSString*) advocateToken
                referralId:(NSString*) referralId
                completionBlock:(CompletedGetReferral) onCompleted(accountSlug advocateToken : advocateToken referralId : referralId)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accountSlug |  ``` Required ```  | The account identifier |
| advocateToken |  ``` Required ```  | The advocate's token |
| referralId |  ``` Required ```  | The referral id |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* accountSlug = @"account_slug";
    NSString* advocateToken = @"advocate_token";
    NSString* referralId = @"referral_id";

    [self.referrals getReferralAsyncWithAccountSlug: accountSlug advocateToken : advocateToken referralId : referralId  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="delete_referral_async_with_account_slug"></a>![Method: ](https://apidocs.io/img/method.png ".referrals.deleteReferralAsyncWithAccountSlug") deleteReferralAsyncWithAccountSlug

> Delete a referral.


```objc
function deleteReferralAsyncWithAccountSlug:(NSString*) accountSlug
                advocateToken:(NSString*) advocateToken
                referralId:(NSString*) referralId
                completionBlock:(CompletedDeleteReferral) onCompleted(accountSlug advocateToken : advocateToken referralId : referralId)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accountSlug |  ``` Required ```  | The account identifier |
| advocateToken |  ``` Required ```  | The advocate's token |
| referralId |  ``` Required ```  | The referral identifier |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* accountSlug = @"account_slug";
    NSString* advocateToken = @"advocate_token";
    NSString* referralId = @"referral_id";

    [self.referrals deleteReferralAsyncWithAccountSlug: accountSlug advocateToken : advocateToken referralId : referralId  completionBlock:^(BOOL success, HttpContext* context, NSError* error) { 
       //Add code here
    }];
```


#### <a name="post_referrals_async_with_account_slug"></a>![Method: ](https://apidocs.io/img/method.png ".referrals.postReferralsAsyncWithAccountSlug") postReferralsAsyncWithAccountSlug

> Create a new referral.


```objc
function postReferralsAsyncWithAccountSlug:(NSString*) accountSlug
                advocateToken:(NSString*) advocateToken
                referralForm:(ReferralForm*) referralForm
                completionBlock:(CompletedPostReferrals) onCompleted(accountSlug advocateToken : advocateToken referralForm : referralForm)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accountSlug |  ``` Required ```  | The account identifier |
| advocateToken |  ``` Required ```  | The advocate's token |
| referralForm |  ``` Required ```  | The body of the request |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* accountSlug = @"account_slug";
    NSString* advocateToken = @"advocate_token";
    ReferralForm* referralForm = [[ReferralForm alloc]init];

    [self.referrals postReferralsAsyncWithAccountSlug: accountSlug advocateToken : advocateToken referralForm : referralForm  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="put_referral_async_with_account_slug"></a>![Method: ](https://apidocs.io/img/method.png ".referrals.putReferralAsyncWithAccountSlug") putReferralAsyncWithAccountSlug

> Update a referral.


```objc
function putReferralAsyncWithAccountSlug:(NSString*) accountSlug
                advocateToken:(NSString*) advocateToken
                referralId:(NSString*) referralId
                referralForm:(ReferralForm*) referralForm
                completionBlock:(CompletedPutReferral) onCompleted(accountSlug advocateToken : advocateToken referralId : referralId referralForm : referralForm)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accountSlug |  ``` Required ```  | The account identifier |
| advocateToken |  ``` Required ```  | The advocate's token |
| referralId |  ``` Required ```  | The referral id |
| referralForm |  ``` Required ```  | The body of the request |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* accountSlug = @"account_slug";
    NSString* advocateToken = @"advocate_token";
    NSString* referralId = @"referral_id";
    ReferralForm* referralForm = [[ReferralForm alloc]init];

    [self.referrals putReferralAsyncWithAccountSlug: accountSlug advocateToken : advocateToken referralId : referralId referralForm : referralForm  completionBlock:^(BOOL success, HttpContext* context, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_referrals_async_with_account_slug"></a>![Method: ](https://apidocs.io/img/method.png ".referrals.getReferralsAsyncWithAccountSlug") getReferralsAsyncWithAccountSlug

> Get the list of referrals for a given advocate.


```objc
function getReferralsAsyncWithAccountSlug:(NSString*) accountSlug
                advocateToken:(NSString*) advocateToken
                page:(NSNumber*) page
                limit:(NSNumber*) limit
                filter:(NSString*) filter
                sort:(NSString*) sort
                completionBlock:(CompletedGetReferrals) onCompleted(accountSlug advocateToken : advocateToken page : page limit : limit filter : filter sort : sort)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accountSlug |  ``` Required ```  | The account identifier |
| advocateToken |  ``` Required ```  | The advocate's token |
| page |  ``` Optional ```  | Page number, e.g. 1 would start at the first result, and 10 would start at the tenth result. |
| limit |  ``` Optional ```  | Maximum number of results to return in the response. Default (10), threshold (100) |
| filter |  ``` Optional ```  | Allowed fields: url, referral_origin_slug, created. Use the following delimiters to build your filters params. Use the following delimiters to build your filters params. The vertical bar ('\|') to separate individual filter phrases and a double colon ('::') to separate the names and values. The delimiter of the double colon (':') separates the property name from the comparison value, enabling the comparison value to contain spaces. Example: www.example.com/users?filter='name::todd\|city::denver\|title::grand poobah' |
| sort |  ``` Optional ```  | Allowed fields: created. Use sort query-string parameter that contains a delimited set of property names. For each property name, sort in ascending order, and for each property prefixed with a dash ('-') sort in descending order. Separate each property name with a vertical bar ('\|'), which is consistent with the separation of the name\|value pairs in filtering, above. For example, if we want to retrieve users in order of their last name (ascending), first name (ascending) and hire date (descending), the request might look like this www.example.com/users?sort='last_name\|first_name\|-hire_date' |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* accountSlug = @"account_slug";
    NSString* advocateToken = @"advocate_token";
    NSNumber* page = 193;
    NSNumber* limit = 193;
    NSString* filter = @"filter";
    NSString* sort = @"sort";

    [self.referrals getReferralsAsyncWithAccountSlug: accountSlug advocateToken : advocateToken page : page limit : limit filter : filter sort : sort  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

### <a name="redemptionrequests"></a>![Class: ](https://apidocs.io/img/class.png ".redemptionrequests") redemptionrequests

#### Get singleton instance
```objc
RedemptionRequests* redemptionRequests = [[RedemptionRequests alloc]init] ;
```

#### <a name="get_redemption_request_status_async_with_redemption_request_status_slug"></a>![Method: ](https://apidocs.io/img/method.png ".redemptionrequests.getRedemptionRequestStatusAsyncWithRedemptionRequestStatusSlug") getRedemptionRequestStatusAsyncWithRedemptionRequestStatusSlug

> Get a redemption request status.


```objc
function getRedemptionRequestStatusAsyncWithRedemptionRequestStatusSlug:(NSString*) redemptionRequestStatusSlug
                completionBlock:(CompletedGetRedemptionRequestStatus) onCompleted(redemptionRequestStatusSlug)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| redemptionRequestStatusSlug |  ``` Required ```  | The redemption request status identifier |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* redemptionRequestStatusSlug = @"redemption_request_status_slug";

    [self.redemptionRequests getRedemptionRequestStatusAsyncWithRedemptionRequestStatusSlug: redemptionRequestStatusSlug  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_redemption_request_statuses_with_completion_block"></a>![Method: ](https://apidocs.io/img/method.png ".redemptionrequests.getRedemptionRequestStatusesWithCompletionBlock") getRedemptionRequestStatusesWithCompletionBlock

> Get redemption request statuses.


```objc
function getRedemptionRequestStatusesWithCompletionBlock:(CompletedGetRedemptionRequestStatuses) onCompleted()
```



#### Example Usage

```objc

    [self.redemptionRequests getRedemptionRequestStatusesWithCompletionBlock:  ^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_redemption_request_action_async_with_redemption_request_action_slug"></a>![Method: ](https://apidocs.io/img/method.png ".redemptionrequests.getRedemptionRequestActionAsyncWithRedemptionRequestActionSlug") getRedemptionRequestActionAsyncWithRedemptionRequestActionSlug

> Get a redemption request action.


```objc
function getRedemptionRequestActionAsyncWithRedemptionRequestActionSlug:(NSString*) redemptionRequestActionSlug
                completionBlock:(CompletedGetRedemptionRequestAction) onCompleted(redemptionRequestActionSlug)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| redemptionRequestActionSlug |  ``` Required ```  | The redemption request action identifier |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* redemptionRequestActionSlug = @"redemption_request_action_slug";

    [self.redemptionRequests getRedemptionRequestActionAsyncWithRedemptionRequestActionSlug: redemptionRequestActionSlug  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_redemption_request_actions_with_completion_block"></a>![Method: ](https://apidocs.io/img/method.png ".redemptionrequests.getRedemptionRequestActionsWithCompletionBlock") getRedemptionRequestActionsWithCompletionBlock

> Get redemption request actions.


```objc
function getRedemptionRequestActionsWithCompletionBlock:(CompletedGetRedemptionRequestActions) onCompleted()
```



#### Example Usage

```objc

    [self.redemptionRequests getRedemptionRequestActionsWithCompletionBlock:  ^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="patch_redemption_request_async_with_account_slug"></a>![Method: ](https://apidocs.io/img/method.png ".redemptionrequests.patchRedemptionRequestAsyncWithAccountSlug") patchRedemptionRequestAsyncWithAccountSlug

> Redeem a redemption request. After the redemption request is created it needs to be redeemed. This will deduct the amount of the advocate unclaimed balance and move the request to the completed state.


```objc
function patchRedemptionRequestAsyncWithAccountSlug:(NSString*) accountSlug
                redemptionRequestId:(int) redemptionRequestId
                completionBlock:(CompletedPatchRedemptionRequest) onCompleted(accountSlug redemptionRequestId : redemptionRequestId)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accountSlug |  ``` Required ```  | The account identifier |
| redemptionRequestId |  ``` Required ```  | The redemption request id |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* accountSlug = @"account_slug";
    int redemptionRequestId = 193;

    [self.redemptionRequests patchRedemptionRequestAsyncWithAccountSlug: accountSlug redemptionRequestId : redemptionRequestId  completionBlock:^(BOOL success, HttpContext* context, NSError* error) { 
       //Add code here
    }];
```


#### <a name="post_redemption_request_async_with_account_slug"></a>![Method: ](https://apidocs.io/img/method.png ".redemptionrequests.postRedemptionRequestAsyncWithAccountSlug") postRedemptionRequestAsyncWithAccountSlug

> Create a redemption request.


```objc
function postRedemptionRequestAsyncWithAccountSlug:(NSString*) accountSlug
                redemptionRequestForm:(RedemptionRequestForm*) redemptionRequestForm
                completionBlock:(CompletedPostRedemptionRequest) onCompleted(accountSlug redemptionRequestForm : redemptionRequestForm)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accountSlug |  ``` Required ```  | The account identifier |
| redemptionRequestForm |  ``` Required ```  | The body of the request |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* accountSlug = @"account_slug";
    RedemptionRequestForm* redemptionRequestForm = [[RedemptionRequestForm alloc]init];

    [self.redemptionRequests postRedemptionRequestAsyncWithAccountSlug: accountSlug redemptionRequestForm : redemptionRequestForm  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_redemption_request_async_with_account_slug"></a>![Method: ](https://apidocs.io/img/method.png ".redemptionrequests.getRedemptionRequestAsyncWithAccountSlug") getRedemptionRequestAsyncWithAccountSlug

> Get a redemption request by a given id.


```objc
function getRedemptionRequestAsyncWithAccountSlug:(NSString*) accountSlug
                redemptionRequestId:(NSString*) redemptionRequestId
                completionBlock:(CompletedGetRedemptionRequest) onCompleted(accountSlug redemptionRequestId : redemptionRequestId)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accountSlug |  ``` Required ```  | The account identifier |
| redemptionRequestId |  ``` Required ```  | The redemption request identifier |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* accountSlug = @"account_slug";
    NSString* redemptionRequestId = @"redemption_request_id";

    [self.redemptionRequests getRedemptionRequestAsyncWithAccountSlug: accountSlug redemptionRequestId : redemptionRequestId  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_redemption_requests_async_with_account_slug"></a>![Method: ](https://apidocs.io/img/method.png ".redemptionrequests.getRedemptionRequestsAsyncWithAccountSlug") getRedemptionRequestsAsyncWithAccountSlug

> Get the list of redemption requests.


```objc
function getRedemptionRequestsAsyncWithAccountSlug:(NSString*) accountSlug
                page:(NSString*) page
                limit:(NSString*) limit
                filter:(NSString*) filter
                sort:(NSString*) sort
                completionBlock:(CompletedGetRedemptionRequests) onCompleted(accountSlug page : page limit : limit filter : filter sort : sort)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accountSlug |  ``` Required ```  | The account identifier |
| page |  ``` Optional ```  | Page number, e.g. 1 would start at the first result, and 10 would start at the tenth result. |
| limit |  ``` Optional ```  | Maximum number of results to return in the response. Default (10), threshold (100) |
| filter |  ``` Optional ```  | Allowed fields: redemption_request_id, name, lastname, email, request_status_slug, request_action_slug, from, to, created. Use the following delimiters to build your filters params. The vertical bar ('\|') to separate individual filter phrases and a double colon ('::') to separate the names and values. The delimiter of the double colon (':') separates the property name from the comparison value, enabling the comparison value to contain spaces. Example: www.example.com/users?filter='name::todd\|city::denver\|title::grand poobah' |
| sort |  ``` Optional ```  | Allowed fields: name, lastname, email, created. Use sort query-string parameter that contains a delimited set of property names. For each property name, sort in ascending order, and for each property prefixed with a dash ('-') sort in descending order. Separate each property name with a vertical bar ('\|'), which is consistent with the separation of the name\|value pairs in filtering, above. For example, if we want to retrieve users in order of their last name (ascending), first name (ascending) and hire date (descending), the request might look like this www.example.com/users?sort='last_name\|first_name\|-hire_date' |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* accountSlug = @"account_slug";
    NSString* page = @"page";
    NSString* limit = @"limit";
    NSString* filter = @"filter";
    NSString* sort = @"sort";

    [self.redemptionRequests getRedemptionRequestsAsyncWithAccountSlug: accountSlug page : page limit : limit filter : filter sort : sort  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

### <a name="bonuses"></a>![Class: ](https://apidocs.io/img/class.png ".bonuses") bonuses

#### Get singleton instance
```objc
Bonuses* bonuses = [[Bonuses alloc]init] ;
```

#### <a name="get_bonuses_async_with_account_slug"></a>![Method: ](https://apidocs.io/img/method.png ".bonuses.getBonusesAsyncWithAccountSlug") getBonusesAsyncWithAccountSlug

> Get the list of bonuses for a given account.


```objc
function getBonusesAsyncWithAccountSlug:(NSString*) accountSlug
                page:(NSNumber*) page
                limit:(NSNumber*) limit
                filter:(NSString*) filter
                sort:(NSString*) sort
                completionBlock:(CompletedGetBonuses) onCompleted(accountSlug page : page limit : limit filter : filter sort : sort)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accountSlug |  ``` Required ```  | The account identifier |
| page |  ``` Optional ```  | Page number, e.g. 1 would start at the first result, and 10 would start at the tenth result. |
| limit |  ``` Optional ```  | Maximum number of results to return in the response. Default (10), threshold (100) |
| filter |  ``` Optional ```  | Allowed fields: name, lastname, email, campaign_slug, from, to, created. Use the following delimiters to build your filters params. The vertical bar ('\|') to separate individual filter phrases and a double colon ('::') to separate the names and values. The delimiter of the double colon (':') separates the property name from the comparison value, enabling the comparison value to contain spaces. Example: www.example.com/users?filter='name::todd\|city::denver\|title::grand poobah' |
| sort |  ``` Optional ```  | Allowed fields: name, lastname, email, created. Use sort query-string parameter that contains a delimited set of property names. For each property name, sort in ascending order, and for each property prefixed with a dash ('-') sort in descending order. Separate each property name with a vertical bar ('\|'), which is consistent with the separation of the name\|value pairs in filtering, above. For example, if we want to retrieve users in order of their last name (ascending), first name (ascending) and hire date (descending), the request might look like this www.example.com/users?sort='last_name\|first_name\|-hire_date' |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* accountSlug = @"account_slug";
    NSNumber* page = 29;
    NSNumber* limit = 29;
    NSString* filter = @"filter";
    NSString* sort = @"sort";

    [self.bonuses getBonusesAsyncWithAccountSlug: accountSlug page : page limit : limit filter : filter sort : sort  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="post_bonuses_async_with_account_slug"></a>![Method: ](https://apidocs.io/img/method.png ".bonuses.postBonusesAsyncWithAccountSlug") postBonusesAsyncWithAccountSlug

> Make an attempt to give a bonus for to the advocate's referrer. The system processes the given advocate (referral) and creates a bonus for the advocate's referrer if is needed. All restrictions set on the campaigns for this account will be check out before giving the bonus to the advocate's referrer.


```objc
function postBonusesAsyncWithAccountSlug:(NSString*) accountSlug
                bonusesForm:(BonusesForm*) bonusesForm
                completionBlock:(CompletedPostBonuses) onCompleted(accountSlug bonusesForm : bonusesForm)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accountSlug |  ``` Required ```  | The account identifier |
| bonusesForm |  ``` Required ```  | The body of the request |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* accountSlug = @"account_slug";
    BonusesForm* bonusesForm = [[BonusesForm alloc]init];

    [self.bonuses postBonusesAsyncWithAccountSlug: accountSlug bonusesForm : bonusesForm  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_bonuses_checkup_async_with_account_slug"></a>![Method: ](https://apidocs.io/img/method.png ".bonuses.getBonusesCheckupAsyncWithAccountSlug") getBonusesCheckupAsyncWithAccountSlug

> Check if there is a bonus to be given to the advocate. Allows the clients to check if there is a bonus to be given, it simulates the behaivor of a POST request to /accounts/{account_slug}/bonuses resource. This resource is idempotent.


```objc
function getBonusesCheckupAsyncWithAccountSlug:(NSString*) accountSlug
                advocateToken:(NSString*) advocateToken
                reference:(NSString*) reference
                paymentAmount:(double) paymentAmount
                completionBlock:(CompletedGetBonusesCheckup) onCompleted(accountSlug advocateToken : advocateToken reference : reference paymentAmount : paymentAmount)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accountSlug |  ``` Required ```  | The account identifier |
| advocateToken |  ``` Required ```  | The referral's token. Usually the one that completed the purchase, or trigger an event. |
| reference |  ``` Required ```  | The reference number for this request. Usually the order_id, payment_id, or timestamp. |
| paymentAmount |  ``` Required ```  | The payment amount the referrals has made. Required for a percentage based campaign. |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* accountSlug = @"account_slug";
    NSString* advocateToken = @"advocate_token";
    NSString* reference = @"reference";
    double paymentAmount = 29.6419884425783;

    [self.bonuses getBonusesCheckupAsyncWithAccountSlug: accountSlug advocateToken : advocateToken reference : reference paymentAmount : paymentAmount  completionBlock:^(BOOL success, HttpContext* context, NSData* response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="post_bonuses_force_async_with_account_slug"></a>![Method: ](https://apidocs.io/img/method.png ".bonuses.postBonusesForceAsyncWithAccountSlug") postBonusesForceAsyncWithAccountSlug

> Force the system to give a bonus to an advocate. The system will not take into account the restriccions specified on the campaigns.


```objc
function postBonusesForceAsyncWithAccountSlug:(NSString*) accountSlug
                bonusForm:(BonusesForm1*) bonusForm
                completionBlock:(CompletedPostBonusesForce) onCompleted(accountSlug bonusForm : bonusForm)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accountSlug |  ``` Required ```  | The account identifier |
| bonusForm |  ``` Required ```  | The body of the request |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* accountSlug = @"account_slug";
    BonusesForm1* bonusForm = [[BonusesForm1 alloc]init];

    [self.bonuses postBonusesForceAsyncWithAccountSlug: accountSlug bonusForm : bonusForm  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_bonuses_trace_async_with_account_slug"></a>![Method: ](https://apidocs.io/img/method.png ".bonuses.getBonusesTraceAsyncWithAccountSlug") getBonusesTraceAsyncWithAccountSlug

> Get a bonus request trace.


```objc
function getBonusesTraceAsyncWithAccountSlug:(NSString*) accountSlug
                traceId:(int) traceId
                completionBlock:(CompletedGetBonusesTrace) onCompleted(accountSlug traceId : traceId)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accountSlug |  ``` Required ```  | The account identifier |
| traceId |  ``` Required ```  | The trace id |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* accountSlug = @"account_slug";
    int traceId = 29;

    [self.bonuses getBonusesTraceAsyncWithAccountSlug: accountSlug traceId : traceId  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="delete_bonus_async_with_account_slug"></a>![Method: ](https://apidocs.io/img/method.png ".bonuses.deleteBonusAsyncWithAccountSlug") deleteBonusAsyncWithAccountSlug

> Delete a bonus


```objc
function deleteBonusAsyncWithAccountSlug:(NSString*) accountSlug
                bonusId:(int) bonusId
                completionBlock:(CompletedDeleteBonus) onCompleted(accountSlug bonusId : bonusId)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accountSlug |  ``` Required ```  | The account identifier |
| bonusId |  ``` Required ```  | The bonus id |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* accountSlug = @"account_slug";
    int bonusId = 29;

    [self.bonuses deleteBonusAsyncWithAccountSlug: accountSlug bonusId : bonusId  completionBlock:^(BOOL success, HttpContext* context, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_bonus_async_with_account_slug"></a>![Method: ](https://apidocs.io/img/method.png ".bonuses.getBonusAsyncWithAccountSlug") getBonusAsyncWithAccountSlug

> Get a bonus by a given id.


```objc
function getBonusAsyncWithAccountSlug:(NSString*) accountSlug
                bonusId:(int) bonusId
                completionBlock:(CompletedGetBonus) onCompleted(accountSlug bonusId : bonusId)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accountSlug |  ``` Required ```  | The account identifier |
| bonusId |  ``` Required ```  | The bonus id |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* accountSlug = @"account_slug";
    int bonusId = 29;

    [self.bonuses getBonusAsyncWithAccountSlug: accountSlug bonusId : bonusId  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_bonuses_traces_async_with_account_slug"></a>![Method: ](https://apidocs.io/img/method.png ".bonuses.getBonusesTracesAsyncWithAccountSlug") getBonusesTracesAsyncWithAccountSlug

> Get the list of bonuses traces (audit trail). Every time the system tries to give a bonus the an advocate a new trace is created.


```objc
function getBonusesTracesAsyncWithAccountSlug:(NSString*) accountSlug
                page:(NSNumber*) page
                limit:(NSNumber*) limit
                filter:(NSString*) filter
                sort:(NSString*) sort
                completionBlock:(CompletedGetBonusesTraces) onCompleted(accountSlug page : page limit : limit filter : filter sort : sort)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accountSlug |  ``` Required ```  | The account identifier |
| page |  ``` Optional ```  | Page number, e.g. 1 would start at the first result, and 10 would start at the tenth result. |
| limit |  ``` Optional ```  | Maximum number of results to return in the response. Default (10), threshold (100) |
| filter |  ``` Optional ```  | Allowed fields: reference, result, bonus_amount, advocate_token, advocate_referrer_token, campaign_slug, from, to, created. Use the following delimiters to build your filters params. The vertical bar ('\|') to separate individual filter phrases and a double colon ('::') to separate the names and values. The delimiter of the double colon (':') separates the property name from the comparison value, enabling the comparison value to contain spaces. Example: www.example.com/users?filter='name::todd\|city::denver\|title::grand poobah' |
| sort |  ``` Optional ```  | Allowed fields: created. Use sort query-string parameter that contains a delimited set of property names. For each property name, sort in ascending order, and for each property prefixed with a dash ('-') sort in descending order. Separate each property name with a vertical bar ('\|'), which is consistent with the separation of the name\|value pairs in filtering, above. For example, if we want to retrieve users in order of their last name (ascending), first name (ascending) and hire date (descending), the request might look like this www.example.com/users?sort='last_name\|first_name\|-hire_date' |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* accountSlug = @"account_slug";
    NSNumber* page = 29;
    NSNumber* limit = 29;
    NSString* filter = @"filter";
    NSString* sort = @"sort";

    [self.bonuses getBonusesTracesAsyncWithAccountSlug: accountSlug page : page limit : limit filter : filter sort : sort  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

### <a name="campaigns"></a>![Class: ](https://apidocs.io/img/class.png ".campaigns") campaigns

#### Get singleton instance
```objc
Campaigns* campaigns = [[Campaigns alloc]init] ;
```

#### <a name="get_campaign_async_with_account_slug"></a>![Method: ](https://apidocs.io/img/method.png ".campaigns.getCampaignAsyncWithAccountSlug") getCampaignAsyncWithAccountSlug

> Get a campaign by a given slug.


```objc
function getCampaignAsyncWithAccountSlug:(NSString*) accountSlug
                campaignSlug:(NSString*) campaignSlug
                completionBlock:(CompletedGetCampaign) onCompleted(accountSlug campaignSlug : campaignSlug)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accountSlug |  ``` Required ```  | The account identifier |
| campaignSlug |  ``` Required ```  | The campaign identifier |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* accountSlug = @"account_slug";
    NSString* campaignSlug = @"campaign_slug";

    [self.campaigns getCampaignAsyncWithAccountSlug: accountSlug campaignSlug : campaignSlug  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_campaigns_async_with_account_slug"></a>![Method: ](https://apidocs.io/img/method.png ".campaigns.getCampaignsAsyncWithAccountSlug") getCampaignsAsyncWithAccountSlug

> Get the list of campaings for a given account.


```objc
function getCampaignsAsyncWithAccountSlug:(NSString*) accountSlug
                page:(NSNumber*) page
                limit:(NSNumber*) limit
                filter:(NSString*) filter
                sort:(NSString*) sort
                completionBlock:(CompletedGetCampaigns) onCompleted(accountSlug page : page limit : limit filter : filter sort : sort)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| accountSlug |  ``` Required ```  | The account identifier |
| page |  ``` Optional ```  | Page number, e.g. 1 would start at the first result, and 10 would start at the tenth result. |
| limit |  ``` Optional ```  | Maximum number of results to return in the response. Default (10), threshold (100) |
| filter |  ``` Optional ```  | Allowed fields: name, description, start_date, end_date, is_active (true\|false), created. Use the following delimiters to build your filters params. The vertical bar ('\|') to separate individual filter phrases and a double colon ('::') to separate the names and values. The delimiter of the double colon (':') separates the property name from the comparison value, enabling the comparison value to contain spaces. Example: www.example.com/users?filter='name::todd\|city::denver\|title::grand poobah' |
| sort |  ``` Optional ```  | Allowed fields: campaign_slug, created, start_date, end_date, is_active. Use sort query-string parameter that contains a delimited set of property names. For each property name, sort in ascending order, and for each property prefixed with a dash ('-') sort in descending order. Separate each property name with a vertical bar ('\|'), which is consistent with the separation of the name\|value pairs in filtering, above. For example, if we want to retrieve users in order of their last name (ascending), first name (ascending) and hire date (descending), the request might look like this www.example.com/users?sort='last_name\|first_name\|-hire_date' |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* accountSlug = @"account_slug";
    NSNumber* page = 29;
    NSNumber* limit = 29;
    NSString* filter = @"filter";
    NSString* sort = @"sort";

    [self.campaigns getCampaignsAsyncWithAccountSlug: accountSlug page : page limit : limit filter : filter sort : sort  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)



