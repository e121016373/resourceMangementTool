import React from 'react'
import { connect } from 'react-redux'
import { getExpenses } from '../actions/expensesActions'
import { bindActionCreators } from 'redux';

class Expenses extends React.Component {
  componentDidMount() {
    this.props.getExpenses();
  }
  render() {
    const { expenses } = this.props;

    return (
        <div>
        <h1>Expenses</h1>
        <table>
            {expenses.data !== null ? 
            <tbody>
            { expenses.data.map((expenses,i) => 
            <tr key={i}>
                <td>{expenses.id}</td>
                <td>{expenses.date}</td>
                <td>{expenses.description}</td>
                <td>{expenses.value}</td>
            </tr>
            )}
            </tbody>
            : null}
        </table>
        </div>
    )
  }
}

const mapStateToProps = (state) => ({
  expenses: state.expenses
});

const mapDispatchToProps = (dispatch) => bindActionCreators ({
  getExpenses
}, dispatch);

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Expenses);