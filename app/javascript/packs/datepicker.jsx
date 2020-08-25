import React from 'react';
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'

import 'react-dates/initialize';
import 'react-dates/lib/css/_datepicker.css';

import { DateRangePicker } from 'react-dates';

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <DateRangePicker
          startDateId="startDate"
          endDateId="endDate"
          startDate={this.state.startDate}
          endDate={this.state.endDate}
          onDatesChange={({ startDate, endDate }) => { this.setState({ startDate, endDate })}}
          focusedInput={this.state.focusedInput}
          onFocusChange={(focusedInput) => { this.setState({ focusedInput })}}
        />,
    document.body.appendChild(document.createElement('div')),
  )
})
