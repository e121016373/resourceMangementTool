import React, { useState, useEffect } from 'react';
import Posts from './post';
import Pagination from './Pagination';
import axios from 'axios';
import PropTypes from 'prop-types';
import { render } from 'enzyme';

const WTable = ({ datas, tableHead, selectRow, remove }) => {
  //   // Get current posts
  //   const indexOfLastPost = currentPage * postsPerPage;
  //   const indexOfFirstPost = indexOfLastPost - postsPerPage;
  //   const currentPosts = posts.slice(indexOfFirstPost, indexOfLastPost);

  //   // Change page
  //   const paginate = pageNumber => setCurrentPage(pageNumber);
  //   // console.log('the posts are', posts);

  if (!datas) datas = [];
  if (!tableHead) tableHead = [];

  const renderRemove = (data, index) => {
    if (remove) {
      return (
        <td>
          <button
            onClick={() => {
              remove(data);
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

  // const renderTable =()=>{
  //   if(datas1.length )
  // }

  return (
    <div>
      <table className="table">
        <tbody>
          <tr>
            {tableHead.map((name, index) => {
              return <th scope="col">{name}</th>;
            })}
          </tr>
          {datas.map((data, index) => {
            {
              /* console.log('print data', data); */
            }
            return (
              <>
                <tr>
                  {Object.values(data).map((item, index) => {
                    return (
                      <td
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
                  })}
                  {renderRemove(data, index)}
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
