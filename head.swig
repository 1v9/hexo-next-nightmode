<script>
  ((w, d) => {
    'use strict';
    {%- if not config.next_nightmode.alpha and not theme.next_nightmode.alpha %}
      const userScheme = localStorage.getItem('Scheme');
      if (!userScheme) return;
    {%- endif %}
    {%- if config.next_nightmode.alpha or theme.next_nightmode.alpha %}
      const systemScheme = w.matchMedia('(prefers-color-scheme: dark)').matches;
      if (!systemScheme) return;
    {%- endif %}
    d.documentElement.className += ' darkScheme';
  })(window, document);
</script>
