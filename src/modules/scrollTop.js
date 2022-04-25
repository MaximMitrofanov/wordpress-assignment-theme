export function createScrollTop() {
	const scrollToTopButton = document.querySelector('[data-scroll-top]');

	const scrollFunction = () => {
		if (
			document.documentElement.scrollTop > 500
		) {
			scrollToTopButton.style.display = 'flex';
		} else {
			scrollToTopButton.style.display = 'none';
		}
	};

	scrollToTopButton.addEventListener('click', () => {
		window.scrollTo({ top: 0, behavior: 'smooth' });
	});

	window.addEventListener('scroll', scrollFunction);
  scrollFunction();
}
