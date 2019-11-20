const navbar = document.querySelector('.navbar')
const bookingForm = document.querySelector('.booking-form')
const banner = document.querySelector('.banner')
const backTo = document.querySelector('.button-back-tiger')
const addTiger = document.querySelector('.button-add-tiger')

const scrollNavbar = () => {
  backTo.setAttribute('hidden', '');
  addTiger.setAttribute('hidden', '');
  if (bookingForm) {
    backTo.removeAttribute('hidden');
  } if (banner) {
    addTiger.removeAttribute('hidden');
  };
};

export { scrollNavbar };
