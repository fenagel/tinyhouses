import flatpickr from 'flatpickr';
const numberWithCommas = (number) => {
  return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

const parseDate = (string) => {
  const pattern = /(\d{2})-(\d{2})-(\d{4})/;
  return new Date(string.replace(pattern,'$3-$2-$1'));
}

const updateCosts = function(days) {
  const costs = document.querySelector('.costs')

  if (costs) {
    let daysElem = document.getElementById('days');
    let priceElem = document.getElementById('price');
    let serviceFeeElem = document.getElementById('service-fee');
    let totalPriceElem = document.getElementById('total-price');

    let dayRate = JSON.parse(costs.dataset.rate);
    let price = days * dayRate;
    let serviceCharge = price * 0.15;
    let totalPrice = serviceCharge + price;

    daysElem.innerHTML = days;
    priceElem.innerHTML = numberWithCommas(price.toFixed(2));
    serviceFeeElem.innerHTML = numberWithCommas(serviceCharge.toFixed(2));
    totalPriceElem.innerHTML = numberWithCommas(totalPrice.toFixed(2));
  }
}

const toggleDateInputs = function() {
  const checkInInput = document.getElementById('trip_check_in');
  const checkOutInput = document.getElementById('trip_check_out');
  const costs = document.querySelector('.costs');

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
          onChange: function(_, selectedDate) {
                    if (selectedDate === '') {
                      costs.classList.remove('is-visible');
                    } else {
                      let startDate = parseDate(checkInInput.value);
                      let endDate = parseDate(checkOutInput.value);
                      let days = (endDate - startDate) / (1000 * 3600 * 24);
                      console.log(days)
                      updateCosts(days);
                      costs.classList.add('is-visible');
                      }
                    },
        });
  }
};

export { toggleDateInputs }
