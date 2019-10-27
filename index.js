/* global hexo */

'use strict';

const path = require('path');
const utils = require('next-util');

hexo.extend.filter.register('theme_inject', injects => {
  let config = utils.defaultConfigFile(hexo, 'next_nightmode', __dirname, 'default.yml');

  if (!config.enable) {
    if (config.reminder) {
      hexo.log.warn('Enable `next_nightmode` in hexo or theme _config.yml');
      return;
    }
    return;
  }

  injects.style.push(path.join(__dirname, 'css/scheme.styl'));
  injects.head.raw('nightmode-head', utils.getFileContent(__dirname, 'head.swig'), {}, {cache: true});
  if (!config.alpha) {
    injects.style.push(path.join(__dirname, 'css/button.styl'));
    injects.sidebar.raw('nightmode-sidebar', utils.getFileContent(__dirname, 'sidebar.swig'), {}, {cache: true});
  }
  injects.bodyEnd.raw('nightmode-bodyEnd', utils.getFileContent(__dirname, 'bodyEnd.swig'), {}, {cache: true});
});
