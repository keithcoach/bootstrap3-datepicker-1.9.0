bootstrap3-datepicker-vi
============

Meteor packaging of Vietnamese translation of uxsolutions/bootstrap-datepicker

This package is MIT Licensed. Do whatever you like with it but any responsibility for doing so is your own.

All rights to uxsolutions/bootstrap-datepicker are with the original author

Example
============
In your handlebars template:

    <input type="text" class="form-control" id="my-datepicker">

In client-side JS code:

    Template.mytemplate.rendered=function() {
    	$('#my-datepicker').datepicker({
        language: 'vi'
      });
    }

See http://uxsolutions.github.io/bootstrap-datepicker/ for more
