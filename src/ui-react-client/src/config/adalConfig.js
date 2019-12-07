import { AuthenticationContext, adalFetch, withAdalLogin } from 'react-adal';

export const adalConfig = {
  // add process.env to extract out
  tenant: process.env.REACT_APP_TENANT_ID,
  clientId: process.env.REACT_APP_CLIENT_ID,
  endpoints: {
    api: process.env.REACT_APP_TENANT_ID,
  },
  cacheLocation: 'localStorage',
};

export const authContext = new AuthenticationContext(adalConfig);

export const adalApiFetch = (fetch, url, options) =>
  adalFetch(authContext, adalConfig.endpoints.api, fetch, url, options);

export const withAdalLoginApi = withAdalLogin(authContext, adalConfig.endpoints.api);

export const getToken = () => authContext.getCachedToken(adalConfig.clientId);