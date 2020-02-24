import React from 'react';
const AdminPage = () => {
  return (
    <div className="container">
      <h2>Administrator</h2>
      <p>You can either remover User or update User profile here.</p>
      <div className="search-container"> </div>
      <table className="table table-bordered">
        <thead>
          <tr>
            <th>User Nmae</th>
            <th>Firstname</th>
            <th>Lastname</th>
            <th>Location</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>jjang14</td>
            <td>Jungwook</td>
            <td>Jang</td>
            <td>N'Vancouver</td>
          </tr>
          <tr>
            <td>wintondDaGod</td>
            <td>Winton</td>
            <td>Einstein</td>
            <td>N'Edmonton</td>
          </tr>
          <tr>
            <td>bob11</td>
            <td>Bob</td>
            <td>Ghoush</td>
            <td>N'Toronto</td>
          </tr>
        </tbody>
      </table>
    </div>
  );
};
export default AdminPage;
