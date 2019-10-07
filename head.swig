<script>
  ;((w, d) => {
    'use strict';
    let theme = localStorage.getItem('theme');
    if (!theme) return;
    d.documentElement.className += ' darktheme';
  })(window, document);
</script>
