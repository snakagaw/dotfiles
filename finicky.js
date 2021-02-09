module.exports = {
  defaultBrowser: 'Firefox',
  rewrite: [],
  handlers: [
    {
        // Open google search link from Spotlight in Firefox
        match: ({ sourceBundleIdentifier }) =>
            sourceBundleIdentifier === 'com.apple.Spotlight',
        browser: 'Firefox'
    },
    {
      // Open apple.com and example.org urls in Safari
      match: ['apple.com*', 'icloud.com'],
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
      browser: {
          name: 'Google Chrome',
//           profile: 'sn1115'
      }
    },
    {
      match: finicky.matchDomains(/.*\.zoom.us/), 
      browser: 'us.zoom.xos',
    },
  ],
};
