import { createStore, applyMiddleware, compose } from 'redux';
import rootReducer from './reducers/_rootReducer';
import thunk from 'redux-thunk';

export const configureStore = initialState => {
  console.log('3', rootReducer);

  const composeEnhancers =
    window.__REDUX_DEVTOOLS_EXTENSION_COMPOSE__ || compose; // add support for Redux dev tools

  return createStore(
    rootReducer,
    initialState,
    compose(
      applyMiddleware(thunk),
      window.__REDUX_DEVTOOLS_EXTENSION__ &&
        window.__REDUX_DEVTOOLS_EXTENSION__(),
    ),
    //composeEnhancers(applyMiddleware(thunk)),
  );
};

export default configureStore;
