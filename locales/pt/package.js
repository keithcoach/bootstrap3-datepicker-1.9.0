Package.describe({
  name: "rajit:bootstrap3-datepicker-pt",
  git: "https://github.com/rajit/bootstrap3-datepicker.git",
  summary: "Meteor packaging of Portuguese translation of eternicode/bootstrap-datepicker",
  version: "1.6.4",
  documentation: 'README.md'
});

Package.onUse(function (api) {
  api.versionsFrom('0.9.0');
  api.use('jquery', 'client');
  api.use('rajit:bootstrap3-datepicker@1.6.4', 'client');
  api.addFiles('bootstrap-datepicker.pt.min.js', 'client');
});
