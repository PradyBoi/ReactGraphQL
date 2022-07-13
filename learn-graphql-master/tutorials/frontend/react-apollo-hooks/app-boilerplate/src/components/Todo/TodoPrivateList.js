import React, { useState, Fragment } from "react";

import TodoItem from "./TodoItem";
import TodoFilters from "./TodoFilters";
import gql from "graphql-tag";
import { Query } from "react-apollo";
import { render } from "react-dom";

////////////////////////////////////////////////////
// Needs to be deleted
import { ApolloProvider } from "react-apollo";
import ApolloClient from 'apollo-client';
import { InMemoryCache } from "apollo-cache-inmemory";
import { HttpLink } from "apollo-link-http";
////////////////////////////////////////////////////



const GET_MY_TODOS = gql`query getMyTodos{
  todos(where: {is_public: {_eq: false}}, order_by: {created_at: desc}){
    id
    title 
    created_at
    is_completed
  }
}`;

console.log(GET_MY_TODOS);

const TodoPrivateList = props => {
  const [state, setState] = useState({
    filter: "all",
    clearInProgress: false,
  });

  const filterResults = filter => {
    setState({
      ...state,
      filter: filter
    });
  };
  
  const clearCompleted = () => {};
  
  const { todos } = this.props;
  let filteredTodos = todos;
  if (state.filter === "active") {
    filteredTodos = todos.filter(todo => todo.is_completed !== true);
  } else if (state.filter === "completed") {
    filteredTodos = todos.filter(todo => todo.is_completed === true);
  }

  const todoList = [];
  filteredTodos.forEach((todo, index) => {
    todoList.push(<TodoItem key={index} index={index} todo={todo} />);
  });

  return (
    <Fragment>
      <div className="todoListWrapper">
        <ul>{todoList}</ul>
      </div>

      <TodoFilters
        todos={filteredTodos}
        currentFilter={state.filter}
        filterResultsFn={filterResults}
        clearCompletedFn={clearCompleted}
        clearInProgress={state.clearInProgress}
      />
    </Fragment>
  );
};

////////////////////////
// Needs to be deleted
const createApolloClient = (authToken) => {
  return new ApolloClient({
    link: new HttpLink({
      url: 'https://hasura.io/learn/graphql/graphiql',
      headers: {
        Authorization: `Bearer ${authToken}`
      }
    }),
    cache: new InMemoryCache()
  })
};
const client = createApolloClient(true);
////////////////////////////////

const TodoPrivateListQuery = () =>{
  return (
    <Query query={GET_MY_TODOS}>
      {({loading, error, data}) => {
        if(loading){
          return <div>Loading...</div>
        }
        if(error){
          return <div>Error...</div>
        }
        return <TodoPrivateList client={client} todos={data.todos} />
      }}
    </Query>
  )
}

export default TodoPrivateListQuery;
