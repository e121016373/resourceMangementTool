import React, { useState, useEffect } from 'react';
import Posts from './post';
import Pagination from './Pagination';
import axios from 'axios';
import PropTypes from 'prop-types';
import { render } from 'enzyme';
import { doc } from 'prettier';

const WTable = ({
  tableName,
  datas,
  tableHead,
  selectRow,
  remove,
  addFeedback,
  width,
  checkBox,
}) => {
  if (!datas) datas = [];
  if (!tableHead) tableHead = [];

  const renderRemove = (data, index) => {
    if (remove) {
      return (
        <td>
          <button
            onClick={() => {
              remove(data)
                .then(() => {
                  addFeedback({
                    type: 'success',
                    data: '  :delete successfully',
                    show: true,
                  });
                })
                .catch(error => {
                  addFeedback({
                    type: 'error',
                    data: error,
                    show: true,
                  });
                });
              deleteRow(index);
            }}
            className="fas fa-trash-alt fa-1x"
          ></button>
        </td>
      );
    }
  };
  const [datas1, setDatas] = useState(datas);
  // console.log('the datas', datas1, datas);
  const deleteRow = index => {
    datas1.splice(index, 1);
    datas.splice(index, 1);
    setDatas([...datas1]);
    console.log('delete is clicked');
  };

  const renderCheckBox = () => {
    if (checkBox) {
      return (
        <td>
          <div style={{ width: '22px', height: '22px' }}>
            <label className="checkBoxContainer">
              <input type="checkbox"></input>
              <span className="checkMark"></span>
            </label>
          </div>
        </td>
      );
    }
  };

  const renderProgressBar = number => {
    let value = number.split('%')[0];

    if (value > 20) {
      return (
        <div className="progress">
          <p className="counter">{number}</p>
          <div
            style={{
              'max-width': `${value}%`,
              background: '#4caf50',
            }}
            className="bar"
          ></div>
        </div>
      );
    } else {
      return (
        <div className="progress">
          <p className="counter">{number}</p>
          <div
            style={{
              'max-width': `${value}%`,
              background: '#ff9800',
            }}
            className="bar"
          ></div>
        </div>
      );
    }
  };
  return (
    <div>
      <div
        style={{
          borderBottom: '2px solid #ccc',
          margin: '0',
          width: '100%',
        }}
        className="row"
      >
        <div className="header">
          <h4>{tableName}</h4>
        </div>
      </div>
      <table
        style={{
          width: '100%',
        }}
        className="table"
      >
        <tbody>
          <tr>
            {tableHead.map((name, index) => {
              return (
                <th key={index} scope="col">
                  {name}
                </th>
              );
            })}
          </tr>
          {datas.map((data, index) => {
            return (
              <>
                <tr key={index}>
                  {Object.values(data).map((item, index) => {
                    if (
                      typeof item == 'string' &&
                      item.includes('%')
                    ) {
                      return (
                        <td key={index}>{renderProgressBar(item)}</td>
                      );
                    } else {
                      return (
                        <td
                          key={index}
                          onClick={() => {
                            if (selectRow) {
                              selectRow(data);
                            }
                            console.log(
                              'the index of the row is ',
                              index,
                            );
                          }}
                        >
                          {item}
                        </td>
                      );
                    }
                  })}
                  {renderRemove(data, index)}
                  {renderCheckBox()}
                </tr>
              </>
            );
          })}
        </tbody>
      </table>
    </div>
  );
};

export default WTable;
