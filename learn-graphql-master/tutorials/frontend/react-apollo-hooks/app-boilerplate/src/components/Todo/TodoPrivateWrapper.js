import React, { Component } from "react";

import TodoInput from "./TodoInput";
import TodoPrivateList from "./TodoPrivateList";

// const TodoPrivateWrapper = () => {
//   return (
//     <div className="todoWrapper">
//       <div className="sectionHeader">Personal todos</div>

//       <TodoInput />
//       <TodoPrivateList />
//     </div>
//   );
// };

class TodoPrivateWrapper extends Component {
  render() {
    return (
    <div className="todoWrapper">
      <div className="sectionHeader">Personal todos</div>

      <TodoInput />
      <TodoPrivateList />
    </div>
    );
  }
};

export default TodoPrivateWrapper;
