Package.describe({
  name: "keithcoach:bootstrap3-datepicker",
  git: "https://github.com/keithcoach/bootstrap3-datepicker.git",
  summary: "Meteor packaging of uxsolutions/bootstrap-datepicker for Bootstrap 3",
  version: "1.9.0",
  documentation: 'README.md'
});

Package.onUse(function (api) {
  api.versionsFrom('0.9.0');
  api.use('jquery', 'client');

  api.addFiles('lib/js/bootstrap-datepicker.js', 'client');
  api.addFiles('lib/css/bootstrap-datepicker3.css', 'client');
});
