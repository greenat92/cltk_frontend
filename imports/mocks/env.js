import $ from 'jquery';

global.$ = global.jQuery = $;
global.WOW = () => {
	return {
		init: () => {},
	};
}; 

$.fn.ionRangeSlider = () => {};

window.matchMedia = window.matchMedia || function matchMedia() {
	return {
		matches: false,
		addListener: () => {},
		removeListener: () => {}
	};
};
