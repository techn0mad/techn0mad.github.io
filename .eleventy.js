const syntaxHighlight = require("@11ty/eleventy-plugin-syntaxhighlight");

module.exports = function(eleventyConfig) {
  // Aliases are in relation to the _includes folder

  // Enable syntax highlighting
  eleventyConfig.addPlugin(syntaxHighlight);

  // Copy the `assets` directory to the compiled site folder
  eleventyConfig.addPassthroughCopy('assets');
  eleventyConfig.addPassthroughCopy('CNAME');

  return {
    dir: {
      input: "./",      // Equivalent to Jekyll's source property
      output: "./_site" // Equivalent to Jekyll's destination property
    },
    passthroughFileCopy: true
  };
};

module.exports = function (eleventy) {
  
  // Add related posts
  eleventy.addLiquidShortcode("related", (title, url) => `
  <a href="${url}" class="related">${title}</a>
  `);

};
