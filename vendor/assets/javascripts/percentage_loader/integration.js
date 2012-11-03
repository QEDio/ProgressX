/*
 integration.js

 Copyright (c) 2012, Chads.io
 All rights reserved.

 This jQuery plugin is licensed under the Simplified BSD License. Please
 see the file license.txt that was included with the plugin bundle.

 */

/*global jQuery */

(function ($) {
    /* Strict mode for this plugin */
    "use strict";
    /*jslint browser: true */

    function progress_callback(callback_url, progress_obj, random){
        $.get(callback_url, {random: random}, function(data){
                if( data != null ){
                    if( data.status == 'queued' || data.num == undefined || data.total == undefined){
                        progress_obj.setProgress(0);
                    }
                    else if( data.status == 'working' ){
                        progress_obj.setProgress(data.num / data.total);
                    }
                    else if( data.status == 'completed'){
                        progress_obj.setProgress(1);
                    }
                }
            }
        );
    }

    // progress callback
    function start_progress_callback(callback_url, progress_obj, random, polling_interval){
        setInterval(function(){
            progress_callback(callback_url, progress_obj, random);
        }, polling_interval);
    }
})