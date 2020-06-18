module.exports = {
  defaultBrowser: 'Firefox',
  rewrite: [],
  handlers: [
    {
      // Open apple.com and example.org urls in Safari
      match: ['apple.com*', 'example.org*'],
      browser: 'Safari',
    },
    {
      // Open any url that includes the string "workplace" in Firefox
      match: /workplace/,
      browser: 'Firefox',
    },
    {
      // Open google.com and *.google.com urls in Google Chrome
      match: [
        'google.com*', // match google.com domain as string (to make regular expression less complicated)
        '*.google.com*', // match all google.com subdomains
      ],
      browser: 'Google Chrome',
    },
    {
      match: /zoom.us\/j\//,
      browser: 'us.zoom.xos',
    },
  ],
};
