# progress_x.js
#
# Copyright (c) 2012, Chads.io
# All rights reserved.
#
# This jQuery plugin is licensed under the Simplified BSD License. Please
# see the file license.txt that was included with the plugin bundle.

#global jQuery
$ = jQuery

#Strict mode for this plugin
"use strict"
#jslint browser: true

# Known plugin types:
# 'percentage_loader': http://widgets.better2web.com/loader/

$.fn.startProgress = (params) ->
  plugin    = params.plugin
  # default settings
  settings  = {
    polling_interval:   1000,
    plugin:             'percentage_loader',
    width:              100,
    height:             100,
    progress:           0.0,
    value:              ''
  }

  #Override default settings with provided params, if any
  $.extend(settings, params) if(params != undefined)

  switch(plugin)
    when 'percentage_loader'
      $(this).startPercentageLoader(settings)
    else
      $(this).startPercentageLoader(settings)