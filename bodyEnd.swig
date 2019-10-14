<script>
  ((w, d) => {
    'use strict';
    let theme = localStorage.getItem('theme');
    if (theme) {
      d.documentElement.className += ' darktheme';
    }
    let btn = d.querySelector('.night-btn');
    w.addEventListener('keydown', event => {
      if (event.altKey && event.keyCode == 88) btn.click();
    });
    btn.addEventListener('click', event => {
      event.preventDefault();
      d.documentElement.classList.toggle('darktheme');
      if ( d.documentElement.classList.contains('darktheme') ) {
        localStorage.setItem('theme', 'night');
        return;
      }
      localStorage.removeItem('theme');
    });
  })(window, document);
</script>
