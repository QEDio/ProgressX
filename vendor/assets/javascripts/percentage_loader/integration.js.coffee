#integration.js
#
#Copyright (c) 2012, Chads.io
#All rights reserved.
#
#This jQuery plugin is licensed under the Simplified BSD License. Please
#see the file license.txt that was included with the plugin bundle.

#global jQuery
$ = jQuery
#Strict mode for this plugin
"use strict";
#jslint browser: true

# initialize and start percentage loader
$.fn.startPercentageLoader = (params) ->
  callback_url        = params.callback_url
  random              = params.random
  polling_interval    = params.polling_interval
  message_obj         = params.message
  progress_loader     = $(this).percentageLoader(params)

  id = setInterval(
    -> callbackPercentageLoader(callback_url, progress_loader, message_obj, random),
    polling_interval
  )

  return {progress_callback_id: id, progress_loader: progress_loader}

callbackPercentageLoader = (callback_url, progress_obj, message_obj, random) ->
  $.get(callback_url, {random: random}, (data) ->
    if data != null
      if data.status == 'queued' or data.num == undefined or data.total == undefined
        progress_obj.setProgress(0)
      else if data.status == 'working'
        progress_obj.setProgress(data.num / data.total)
        setProgressMessage(message_obj, data.message)
      else if data.status == 'completed'
        progress_obj.setProgress(1)
      else
        progress_obj.setProgress(0)
    else
      progress_obj.setProgress(0)
  )

setProgressMessage = (obj, message) ->
  obj.find("p").remove()
  obj.append("<p>" + message + "</p>")
