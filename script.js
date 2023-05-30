console.log("Welcome To Recipes");

window.addEventListener('DOMContentLoaded', function() {
    var preloader = document.getElementById('preloader');
    setTimeout(function() {
      preloader.style.transition = 'opacity 0.3s';
      preloader.style.opacity = 0;
      setTimeout(function() {
        preloader.style.display = 'none';
      }, 3000); // Change 3000 to the desired duration in milliseconds
    }, 5000); // Add a delay to ensure the preloader is displayed for a minimum duration
  });
