bootstrap3-datepicker
============

Meteor packaging of uxsolutions/bootstrap-datepicker with Bootstrap 3 support

This package is MIT Licensed. Do whatever you like with it but any responsibility for doing so is your own.

NOTE: If you'd like to use this with Bootstrap 4, you might have success by reading here https://github.com/uxsolutions/bootstrap-datepicker/issues/2343

All rights to uxsolutions/bootstrap-datepicker are with the original author

Example
============
In your handlebars template:

    <input type="text" class="form-control" id="my-datepicker">

In client-side JS code:

    Template.mytemplate.rendered=function() {
    	$('#my-datepicker').datepicker();
    }

See http://uxsolutions.github.io/bootstrap-datepicker/ for more

