export function createTabs() {
	const tabsNodeList = document.querySelectorAll('[data-tabs]');

	Array.from(tabsNodeList).forEach((tab) => {
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
