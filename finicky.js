finicky.setDefaultBrowser('org.mozilla.firefox');

// Open social network links in Google Chrome
// finicky.onUrl(function(url, opts) {
//   if (url.match(/^https?:\/\/(youtube|facebook|twitter|linkedin)\.com/)) {
//     return {
//       bundleIdentifier: "com.google.Chrome"
//     };
//   }
// });

// Open google apps in Chrome
finicky.onUrl(function(url, opts) {
  if (url.match(/^https?:\/\/(drive|docs|mail|script|calendar)\.google.com/)) {
    return {
      bundleIdentifier: "com.google.Chrome"
    };
  }
});

// finicky.onUrl(function(url, opts) {
//   return {
//     bundleIdentifier: [
//       "org.mozilla.firefox",
//       "com.apple.Safari",
//       "com.google.Chrome"
//     ]
//   };
// });