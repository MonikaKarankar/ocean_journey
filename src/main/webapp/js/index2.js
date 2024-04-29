// window.onload = function() {
//     var ship = document.querySelector('.ship');

//     // Move the ship to the middle of the screen after a delay
//     setTimeout(function() {
//         ship.style.left = 'calc(50% - 100px)'; // Adjust according to ship width
//     }, 1000); // Adjust delay timing as needed
// }
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
        e.preventDefault();

        document.querySelector(this.getAttribute('href')).scrollIntoView({
            behavior: 'smooth'
        });
    });
});