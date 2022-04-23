export function createCarousel() {
	const carouselArray = document.querySelectorAll('[data-carousel-wrapper]');

	carouselArray.forEach((item) => {
		// Current Tab
		let carouselTab = 0;

		// Arrow buttons selector converted into array to use Array prototypes
		const carouselButtons = Array.from(
			item.querySelectorAll('[data-carousel-arrow]')
		);

		// Track selector (first one) !!Does not support multi-tracks!!
		const trackEl = item.querySelector('[data-carousel-track]');
		// Slider selector (first one) !!Does not support multi-tracks!!
		const sliderEl = item.querySelector('[data-carousel-slider]');

		// How many items viewed per tab
		const elementsPerTab =
			Number(trackEl.getAttribute('data-elements-per-tab')); // Default is 4

		// How many items inside the track
		const trackTotalEl = trackEl.children.length;


		// How many tabs there are
		const trackMaxTab = Math.ceil(trackTotalEl / elementsPerTab) - 1;
 
		const handleCarouselButton = (direction) => {
			const directionNum =
				(direction === 'left' && -1) || (direction === 'right' && 1);

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

		carouselButtons.forEach((button) => {
			button.addEventListener(
				'click',
				handleCarouselButton.bind(
					this,
					button.getAttribute('data-carousel-arrow')
				)
			);
		});
	});
}
