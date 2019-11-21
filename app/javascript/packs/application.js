import 'select2/dist/css/select2.css';
import "flatpickr/dist/flatpickr.min.css";
import "flatpickr/dist/themes/material_orange.css";
import "../plugins/flatpickr";
// import "bootstrap";

import { scrollNavbar } from '../components/navbar';
import { initSelect2 } from '../components/init_select2';

initSelect2();
scrollNavbar();
