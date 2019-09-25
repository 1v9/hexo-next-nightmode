<script>
  ;((w, d) => {
    'use strict';
    let theme = localStorage.getItem('theme');
    if (!theme) return;
    d.documentElement.className += ' dark-theme';
  })(window, document);
</script>
