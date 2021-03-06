import React from 'react';
import { RECEIVE_TODOS, RECEIVE_TODO }  from '../components/actions/actions';
import { REMOVE_TODO }  from '../components/actions/todo_actions';

const initialState = {
  1: {
    id: 1,
    title: 'wash car',
    body: 'with soap',
    done: false
  },
  2: {
    id: 2,
    title: 'wash dog',
    body: 'with shampoo',
    done: true
  },
};

const todosReducer = (state = initialState, action) => {
  Object.freeze(state);
  let newState = {};
  switch(action.type) {
    case RECEIVE_TODOS:
      action.todos.forEach((el) => {
        newState[el.id] = el;
      });
      return newState;
    case RECEIVE_TODO:
      newState = Object.assign({}, state);
      newState[action.todo.id] = action.todo;
      return newState;
    case REMOVE_TODO:
      Object.keys(state).forEach((el) => {
        // debugger;
        if (parseInt(el) !== action.todo) {
          newState[el] = state[el];
        }
      });
      return newState;
    default:
      return state;
  }
};


export default todosReducer;
