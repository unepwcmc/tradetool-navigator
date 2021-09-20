module.exports = {
  plugins: [
    require('tailwindcss'),
    require('autoprefixer'),
    require('@fullhuman/postcss-purgecss')({
      content: ['./app/**/*.html.erb', './app/helpers/**/*.rb', './app/javascript/**/**/*.vue', './app/javascript/**/*.js'], 
      extract: {
        md: (content) => {
          return content.match(/[^<>"'`\s]*/)
        }
      }
    })
  ]
};
