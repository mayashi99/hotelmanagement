const buttons = document.querySelectorAll('.follow-btn');
buttons.forEach(button => {
    button.addEventListener('click', () => {
        alert('You are now following this hotel!');
        button.textContent = 'Following';
        button.disabled = true;
    });
});
/**
 * 
 */