import flatpickr from 'flatpickr';

const toggleDateInputs = function() {
  const checkInInput = document.getElementById('trip_check_in');
  const checkOutInput = document.getElementById('trip_check_out');

  if (checkInInput && checkOutInput) {
    const unavailableDates = JSON.parse(document.querySelector('.widget-content').dataset.unavailable)

    flatpickr(checkInInput, {
      minDate: 'today',
      dateFormat: 'd-m-Y',
      disable: unavailableDates,
      onChange: function(selectedDates, selectedDate) {
        if (selectedDate === '') {
        checkOutInput.disabled = true;
        }
        let minDate = selectedDates[0];
        minDate.setDate(minDate.getDate() + 1);
        checkOutCalendar.set('minDate', minDate);
        checkOutInput.disabled = false;
        }
      });
      const checkOutCalendar =
        flatpickr(checkOutInput, {
          dateFormat: 'd-m-Y',
          disable: unavailableDates,
        });
  }
};

export { toggleDateInputs }
