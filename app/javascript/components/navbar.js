const navbar = document.querySelector('.navbar');
const bookingForm = document.querySelector('.booking-form');
const banner = document.querySelector('.banner');
const backTo = document.querySelector('.button-back-tiger');
const addTiger = document.querySelector('.button-add-tiger');
const icon = document.querySelector('.fa-paw');
const showBanner = document.querySelector('.banner-show');

const scrollNavbar = () => {
  backTo.setAttribute('hidden', '');
  addTiger.setAttribute('hidden', '');
  if (banner) {
    addTiger.removeAttribute('hidden');
    navbar.style.background = 'rgba(255,255,255,0)';
    icon.style.color = '#f7f7f7';
    addTiger.style.color = '#f7f7f7';
    addTiger.style.opacity = 1;
  } if (showBanner) {
    backTo.removeAttribute('hidden');
    navbar.style.background = 'rgba(255,255,255,0)';
    icon.style.color = '#f7f7f7';
    backTo.style.color = '#f7f7f7';
    backTo.style.opacity = 1;
    window.addEventListener('scroll', (event) => {
      console.log(event.currentTarget.scrollY);
      if (event.currentTarget.scrollY >= showBanner.offsetHeight) {
        navbar.style.background = 'rgba(255,255,255,1)';
        icon.style.color = '#333';
        backTo.style.color = '#333';
        backTo.style.opacity = 1;
      }
    });
  }
  ;
};

export { scrollNavbar };
