import { RECEIVE_ONE_POKEMON } from '../actions/pokemon_actions';

export const itemsReducer = (state = {}, action) => {
  Object.freeze(state);

  switch(action.type) {
    // case RECEIVE_ONE_POKEMON:
    //   return action.pokemon;
    default:
      return state;
  }
};


/// Replace ALL
