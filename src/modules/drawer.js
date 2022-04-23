export function createDrawers() {
	const drawerBtnNodeList = document.querySelectorAll('[data-drawer]');

	const handleClick = (drawerId) => {
		const el = document.getElementById(drawerId);

		if (el) {
			el.classList.toggle('active');
		}
	};
	
	Array.from(drawerBtnNodeList).forEach((drawer) =>
		drawer.addEventListener(
			'click',
			handleClick.bind(this, drawer.getAttribute('data-drawer'))
		)
	);
}
