Package.describe({
  name: "rajit:bootstrap3-datepicker-zh-tw",
  git: "https://github.com/rajit/bootstrap3-datepicker.git",
  summary: "Meteor packaging of Traditional Chinese translation of eternicode/bootstrap-datepicker",
  version: "1.5.1",
  documentation: 'README.md'
});

Package.onUse(function (api) {
  api.versionsFrom('0.9.0');
  api.use('jquery', 'client');
  api.use('rajit:bootstrap3-datepicker@1.5.1', 'client');
  api.addFiles('bootstrap-datepicker.zh-TW.min.js', 'client');
});
