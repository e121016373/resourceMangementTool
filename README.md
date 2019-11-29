# TODO

UBC Hosting
- provide blueprint project
  - copy from previous term
  - upgrade to .net core 3.1 when it's released
  - upgrade react and other front end dependencies if need be
- In Azure  
  - create all the UBC resources in one resource group
  - split resources within that group into one or more teams
  - create one Azure sql server
  - for each team
    - create an app service
    - configure deployment via local git with separate deployment credentials
    - create one Azure sql DB on the existing server
    - configure team access to the db via Azure AD groups
    - configure app service access via a managed system identity
      *** see https://docs.microsoft.com/en-us/azure/app-service/app-service-web-tutorial-connect-msi
  - db migrations?
    - Entity Framework code first migrations
  - troubleshooting?
    - provide access to the app logs?  

## Notes

  Create contained azure ad user

  ```
  create user [appuser@domain.com]
  from external provider;

  ALTER ROLE db_owner ADD MEMBER [appuser@domain.com];

  OR

  create user [appgroup]
  from external provider;

  ALTER ROLE db_owner ADD MEMBER [appgroup];
  ```

*** see https://docs.microsoft.com/en-us/azure/app-service/app-service-web-tutorial-connect-msi

in azure
- add an azure ad admin for sql ad
- create azure ad group
- enable system identity on app service
- add app identity to group
- create contained db user for ad group
- assign user to db roles
- configure the db firewall to allow outbout ips from app
  13.71.170.129,52.138.17.9,52.138.25.189,52.138.8.116,52.138.25.144

in c# app:

Install-Package Microsoft.Azure.Services.AppAuthentication -Version 1.3.0
connection string: "Server=tcp:<server-name>.database.windows.net,1433;Database=<database-name>;"
var conn = (System.Data.SqlClient.SqlConnection)Database.GetDbConnection();
conn.AccessToken = (new Microsoft.Azure.Services.AppAuthentication.AzureServiceTokenProvider()).GetAccessTokenAsync("https://database.windows.net/").Result;
