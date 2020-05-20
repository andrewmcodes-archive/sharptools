module.exports = {
  purge: {
    content: [
      './app/**/*.html.erb',
      './app/helpers/**/*.rb',
      './app/components/**/*.rb',
      './app/javascript/**/*.js'
    ],
    options: {
      whitelistPatterns: [/^~/, /^!/]
    }
  },
  theme: {
    extend: {}
  },
  variants: {},
  plugins: []
}
