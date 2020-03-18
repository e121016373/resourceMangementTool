import '../../../scss/feedbackMsg.scss';
import React, { useState, useEffect } from 'react';
export const ShowFeedbackMsg = ({ msg }) => {
  const [show, setShow] = useState(true);
  let [message, setMsg] = useState(msg);
  return (
    <ul className="msgContainer">
      {message.map((msg, index) => (
        <li style={{ 'list-style-type': 'none' }}>
          <div class={msg.type}>
            <span
              class="closebtn"
              onClick={() => {
                // console.log('the index is ', index);
                message.splice(index, 1);
                let temp = [...message];
                //console.log(message.splice(index, 1));
                // console.log('temp is ', temp);
                setMsg(temp);
              }}
            >
              &times;
            </span>
            <strong>{msg.type}</strong> {msg.data}
          </div>
        </li>
      ))}
    </ul>
  );
};
