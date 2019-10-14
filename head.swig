<script>
  (d => {
    'use strict';
    let theme = localStorage.getItem('theme');
    if (!theme) return;
    d.documentElement.className += ' darktheme';
  })(document);
</script>
