/******/ (function() { // webpackBootstrap
/******/ 	"use strict";
/******/ 	var __webpack_modules__ = ({

/***/ "./src/modules/carousel.js":
/*!*********************************!*\
  !*** ./src/modules/carousel.js ***!
  \*********************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "createCarousel": function() { return /* binding */ createCarousel; }
/* harmony export */ });
function createCarousel() {
  const carouselArray = document.querySelectorAll('[data-carousel-wrapper]');
  carouselArray.forEach(item => {
    // Current Tab
    let carouselTab = 0; // Arrow buttons selector converted into array to use Array prototypes

    const carouselButtons = Array.from(item.querySelectorAll('[data-carousel-arrow]')); // Track selector (first one) !!Does not support multi-tracks!!

    const trackEl = item.querySelector('[data-carousel-track]'); // Slider selector (first one) !!Does not support multi-tracks!!

    const sliderEl = item.querySelector('[data-carousel-slider]'); // How many items viewed per tab

    const elementsPerTab = Number(trackEl.getAttribute('data-elements-per-tab')); // Default is 4
    // How many items inside the track

    const trackTotalEl = trackEl.children.length; // How many tabs there are

    const trackMaxTab = Math.ceil(trackTotalEl / elementsPerTab) - 1;

    const handleCarouselButton = direction => {
      const directionNum = direction === 'left' && -1 || direction === 'right' && 1;

      const _carouselTab = carouselTab + directionNum;

      if (_carouselTab < 0 || _carouselTab > trackMaxTab) {
        sliderEl.classList.remove('shake-left');
        sliderEl.classList.remove('shake-right');
        sliderEl.classList.add('res-shake');
        setTimeout(() => {
          sliderEl.classList.remove('res-shake');

          if (directionNum === -1) {
            sliderEl.classList.add('shake-right');
          } else {
            sliderEl.classList.add('shake-left');
          }
        }, 0);
        return;
      }

      carouselTab = _carouselTab;
      trackEl.style.transform = `translateX(-${100 * carouselTab}%)`;
    };

    carouselButtons.forEach(button => {
      button.addEventListener('click', handleCarouselButton.bind(this, button.getAttribute('data-carousel-arrow')));
    });
  });
}

/***/ }),

/***/ "./src/modules/drawer.js":
/*!*******************************!*\
  !*** ./src/modules/drawer.js ***!
  \*******************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "createDrawers": function() { return /* binding */ createDrawers; }
/* harmony export */ });
function createDrawers() {
  const drawerBtnNodeList = document.querySelectorAll('[data-drawer]');

  const handleClick = drawerId => {
    const el = document.getElementById(drawerId);

    if (el) {
      el.classList.toggle('active');
    }
  };

  Array.from(drawerBtnNodeList).forEach(drawer => drawer.addEventListener('click', handleClick.bind(this, drawer.getAttribute('data-drawer'))));
}

/***/ }),

/***/ "./src/modules/tabs.js":
/*!*****************************!*\
  !*** ./src/modules/tabs.js ***!
  \*****************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "createTabs": function() { return /* binding */ createTabs; }
/* harmony export */ });
function createTabs() {
  const tabsNodeList = document.querySelectorAll('[data-tabs]');
  Array.from(tabsNodeList).forEach(tab => {
    const expandable = document.getElementById(tab.getAttribute('data-tabs'));
    const slider = expandable.querySelector('[data-expandable] > div > div');
    const tabButtons = tab.querySelectorAll('[data-tab-btn]');
    let expanded = true;
    let tabNumber = 0;

    const handleTabClick = (toTabNumber, e) => {
      if (expanded && toTabNumber === tabNumber) {
        tabButtons[tabNumber].classList.remove('active');
        expandable.classList.remove('expanded');
        expanded = false;
      } else if (!expanded) {
        e.currentTarget.classList.add('active');
        expandable.classList.add('expanded');
        expanded = true;
        tabNumber = toTabNumber;
        slider.style.transform = `translateX(${100 * tabNumber}%)`;
      } else {
        tabButtons[tabNumber].classList.remove('active');
        expandable.classList.add('expanded');
        e.currentTarget.classList.add('active');
        expanded = true;
        tabNumber = toTabNumber;
        slider.style.transform = `translateX(${100 * tabNumber}%)`;
      }
    };

    Array.from(tabButtons).forEach((button, index) => {
      button.addEventListener('click', handleTabClick.bind(this, index));
    });
  });
}

/***/ })

/******/ 	});
/************************************************************************/
/******/ 	// The module cache
/******/ 	var __webpack_module_cache__ = {};
/******/ 	
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/ 		// Check if module is in cache
/******/ 		var cachedModule = __webpack_module_cache__[moduleId];
/******/ 		if (cachedModule !== undefined) {
/******/ 			return cachedModule.exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = __webpack_module_cache__[moduleId] = {
/******/ 			// no module.id needed
/******/ 			// no module.loaded needed
/******/ 			exports: {}
/******/ 		};
/******/ 	
/******/ 		// Execute the module function
/******/ 		__webpack_modules__[moduleId](module, module.exports, __webpack_require__);
/******/ 	
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/ 	
/************************************************************************/
/******/ 	/* webpack/runtime/define property getters */
/******/ 	!function() {
/******/ 		// define getter functions for harmony exports
/******/ 		__webpack_require__.d = function(exports, definition) {
/******/ 			for(var key in definition) {
/******/ 				if(__webpack_require__.o(definition, key) && !__webpack_require__.o(exports, key)) {
/******/ 					Object.defineProperty(exports, key, { enumerable: true, get: definition[key] });
/******/ 				}
/******/ 			}
/******/ 		};
/******/ 	}();
/******/ 	
/******/ 	/* webpack/runtime/hasOwnProperty shorthand */
/******/ 	!function() {
/******/ 		__webpack_require__.o = function(obj, prop) { return Object.prototype.hasOwnProperty.call(obj, prop); }
/******/ 	}();
/******/ 	
/******/ 	/* webpack/runtime/make namespace object */
/******/ 	!function() {
/******/ 		// define __esModule on exports
/******/ 		__webpack_require__.r = function(exports) {
/******/ 			if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 				Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 			}
/******/ 			Object.defineProperty(exports, '__esModule', { value: true });
/******/ 		};
/******/ 	}();
/******/ 	
/************************************************************************/
var __webpack_exports__ = {};
// This entry need to be wrapped in an IIFE because it need to be isolated against other modules in the chunk.
!function() {
/*!**********************!*\
  !*** ./src/index.js ***!
  \**********************/
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _modules_carousel__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./modules/carousel */ "./src/modules/carousel.js");
/* harmony import */ var _modules_drawer__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./modules/drawer */ "./src/modules/drawer.js");
/* harmony import */ var _modules_tabs__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./modules/tabs */ "./src/modules/tabs.js");



(0,_modules_carousel__WEBPACK_IMPORTED_MODULE_0__.createCarousel)();
(0,_modules_drawer__WEBPACK_IMPORTED_MODULE_1__.createDrawers)();
(0,_modules_tabs__WEBPACK_IMPORTED_MODULE_2__.createTabs)();
}();
/******/ })()
;
//# sourceMappingURL=index.js.map