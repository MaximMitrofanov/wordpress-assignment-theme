export function createModals() {
	const modalButtonNodeList = document.querySelectorAll('[data-modal]');
  const modalBackdrop = document.createElement('div');
  modalBackdrop.style.display = 'none';
  modalBackdrop.style.position = 'fixed';
  modalBackdrop.style.top = '0';
  modalBackdrop.style.left = '0';
  modalBackdrop.style.minWidth = '100%';
  modalBackdrop.style.minHeight = '100%';
  document.getElementsByTagName('body')[0].appendChild(modalBackdrop);

	Array.from(modalButtonNodeList).forEach((modalButton) => {
		const modal = document.getElementById(
			modalButton.getAttribute('data-modal')
		);

    const modalOff = () => {
      modalBackdrop.removeEventListener('click', modalOff);
      modalBackdrop.style.display = 'none';
      modal.classList.remove('modal-show');
      modalActive = false;
    }
    const modalOn = () => {
      modalBackdrop.addEventListener('click', modalOff);
      modalBackdrop.style.display = 'block';
      modal.classList.add('modal-show');
      modalActive = true;
    }
    

		let modalActive = false;
		if (modal) {
			modalButton.addEventListener('click', () => {
				if (modalActive) {
          modalOff()
				} else {
          modalOn()
				}
			});
		}
	});
}
