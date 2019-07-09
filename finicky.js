 module.exports = {
   defaultBrowser: "Firefox",
   options: {
     hideIcon: false
   },
   handlers: [
     {
       match: finicky.matchDomains('example.com'),
       browser: "Firefox"
     },{
       match: finicky.matchDomains([
         /(drive|docs|mail|script|calendar)\.google\.com$/
       ]),
       browser: "Google Chrome"
     }
   ]
 }


// Open social network links in Google Chrome
// finicky.onUrl(function(url, opts) {
//   if (url.match(/^https?:\/\/(youtube|facebook|twitter|linkedin)\.com/)) {
//     return {
//       bundleIdentifier: "com.google.Chrome"
//     };
//   }
// });

// Open google apps in Chrome

// finicky.onUrl(function(url, opts) {
//   return {
//     bundleIdentifier: [
//       "org.mozilla.firefox",
//       "com.apple.Safari",
//       "com.google.Chrome"
//     ]
//   };
// });
