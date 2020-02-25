import React from 'react';
import { Form } from 'simple-react-form';
import ReactDOM from 'react-dom';
import UserTable from '../subComponents/UserTalbe';
import LocationTable from '../subComponents/LocationTable';
import SkillTable from '../subComponents/SkillTable';
import DisciplineTable from '../subComponents/DisciplineTable';
import Button from 'react-bootstrap/Button';
import '../../css/admin.css';

const AdminPage = () => {
  return (
<<<<<<< HEAD
    <div className="main" class="d-flex p-3 bg secondary">
      <div className="main">
        <div class="sub">
          <UserTable />
        </div>
        <div className="sub">
          <SkillTable />
        </div>
        <div className="sub">
          <DisciplineTable />
        </div>
        <div className="sub">
          <LocationTable />
        </div>
      </div>
    </div>
=======
     <div className="main" class="d-flex p-3 bg secondary">
         <div class="leftSide">
             <UserTable/>
             <LocationTable/>
         </div>
         <div class = "center">
             <SkillTable/>
         </div>
         <div class = "rightSide">
             <DisciplineTable/>
         </div>
     </div>

>>>>>>> 89fcf83619e6bf267556d178e8ff40fd7baa870b
  );
};
export default AdminPage;
