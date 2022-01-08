module.exports = function(eleventyConfig) {
  // copy static assets straight through to final site
  eleventyConfig.addPassthroughCopy('assets')


  // if you're using a custom domain, add the domain name
  // to a CNAME file at the root of your project and
  // uncomment this line. This will ensure that GitHub Pages
  // knows which custom domain to use with your site
  // eleventyConfig.addPassthroughCopy('CNAME')
};
