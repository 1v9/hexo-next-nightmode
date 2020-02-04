<script>
  ((w, d) => {
    'use strict';
    {%- if not config.next_nightmode.alpha and not theme.next_nightmode.alpha %}
      let userScheme = localStorage.getItem('Scheme');
      if (userScheme) d.documentElement.className += ' darkScheme';
      const btn = d.querySelector('.night-btn');
      w.addEventListener('keydown', e => {
        if (e.altKey && e.code === 'KeyX') btn.click();
      });
      btn.addEventListener('click', () => {
        d.documentElement.classList.toggle('darkScheme');
        if ( d.documentElement.classList.contains('darkScheme') ) {
          localStorage.setItem('Scheme', 'Dark');
          return;
        }
        localStorage.removeItem('Scheme');
      });
    {%- endif %}
    {%- if config.next_nightmode.alpha or theme.next_nightmode.alpha %}
      const systemSchemeQuery = w.matchMedia('(prefers-color-scheme: dark)');
      systemSchemeQuery.addListener(e => {
        var enable = systemSchemeQuery.matches;
        if (enable) {
          d.documentElement.className += ' darkScheme';
        } else {
          d.documentElement.className -= ' darkScheme';
        }
        {%- if theme.next_nightmode.debugger %}
          return console.log(`NexT Night Alpha Mode is ${enable ? '🌒 On ' : '☀️ Off'} - triggered by device scheme change.`);
        {%- endif %}
      });
    {%- endif %}
  })(window, document);
</script>
