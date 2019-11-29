/* global hexo */

'use strict';

const path = require('path');
const Util = require('next-util');
const utils = new Util(hexo, __dirname);

hexo.extend.filter.register('theme_inject', injects => {
  let config = utils.defaultConfigFile('next_nightmode', 'default.yml');

  if (!config.enable) {
    if (config.reminder) {
      hexo.log.warn('Enable `next_nightmode` in hexo or theme _config.yml');
      return;
    }
    return;
  }

  injects.style.push(path.join('css/scheme.styl'));
  injects.head.raw('nightmode-head', utils.getFileContent('head.swig'), {}, {cache: true});
  if (!config.alpha) {
    injects.style.push(path.join('css/button.styl'));
    injects.sidebar.raw('nightmode-sidebar', utils.getFileContent('sidebar.swig'), {}, {cache: true});
  }
  injects.bodyEnd.raw('nightmode-bodyEnd', utils.getFileContent('bodyEnd.swig'), {}, {cache: true});
});
