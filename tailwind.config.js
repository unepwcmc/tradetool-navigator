module.exports = {
  // enabled: process.env.NODE_ENV === 'production' || process.env.NODE_ENV === 'production',
  purge: {
    enabled: true,  
    content: [
      './app/**/*.html.erb', 
      './app/helpers/**/*.rb', 
      './app/javascript/**/**/*.vue', 
      './app/javascript/**/*.js', 
      './app/javascript/*.js'
    ], 
  }, 
  darkMode: false,
  theme: {
    extend: {
      colors: {
        ash: {
          light: "#F7FAFB",
          DEFAULT: "#00000029",
          dark: "#707070",
        },
        teal: {
          light: "#2F4F5D",
          DEFAULT: "#1B2024",
          dark: "#1B1B24",
        },
        lime: { DEFAULT: "#AFB90F" },
      },
      fontFamily: {
        sans: ["Raleway", "sans-serif", "system-ui"],
      },
      backgroundImage: {
        "hero-pattern-1": "url('../images/hero-pattern-1.jpeg')",
        "hero-pattern-2": "url('../images/hero-pattern-2.jpeg')",
        "data-platform": "url('../images/DigitalPlatforms.svg')",
        "data-portal": "url('../images/')",
        "data-services": "url('../images/')",
        "data-source": "url('../images/')",
        "database": "url('../images/')",
        "decision-support-tool": "url('../images/')",
        "digital-reports": "url()",
        "flexible-analysis-platform": "url()",
        "library-catalogue": "url()",
        "model": "url()",
        "other---statistics": "url()",
        "other---initiative-organisation": "url()",
        "other---repository": "url()",
        "visualisation---dashboard": "url()",
      },
      minHeight: (theme) => ({
        ...theme('spacing'),
      }),
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
};