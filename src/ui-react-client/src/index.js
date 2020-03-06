 import { runWithAdal } from 'react-adal';
 import { authContext, headers } from './config/adalConfig';

 const DO_NOT_LOGIN = false;

 function run() {
   runWithAdal(
     authContext,
     () => {
       console.log('the headers is ' + headers.Authorization);
       // eslint-disable-next-line
       require('./indexHome.js');
     },
     DO_NOT_LOGIN,
   );
 }
 run();
