Package.describe({
  name: "rajit:bootstrap3-datepicker-sr",
  git: "https://github.com/rajit/bootstrap3-datepicker.git",
  summary: "Meteor packaging of Serbian cyrillic translation of eternicode/bootstrap-datepicker",
  version: "1.5.0",
  documentation: 'README.md'
});

Package.onUse(function (api) {
  api.versionsFrom('0.9.0');
  api.use('jquery', 'client');
  api.use('rajit:bootstrap3-datepicker@1.5.0', 'client');    
  api.addFiles('bootstrap-datepicker.sr.min.js', 'client');
});
