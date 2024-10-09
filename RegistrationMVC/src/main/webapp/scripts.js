function showSection(sectionId) {
    const sections = document.querySelectorAll('.section');
    sections.forEach((section) => {
        section.style.display = section.id === sectionId ? 'block' : 'none';
    });

    const links = document.querySelectorAll('.tab-link');
    links.forEach((link) => {
        link.classList.toggle('active', link.getAttribute('data-section') === sectionId);
    });
}

function acceptHotel(button) {
    const row = button.parentElement.parentElement;
    alert("Hotel accepted successfully!");
    row.remove();
}

function removeHotel(button) {
    const row = button.parentElement.parentElement;
    alert("Hotel removed.");
    row.remove();
}

// Initial load: show dashboard
showSection('dashboard');
