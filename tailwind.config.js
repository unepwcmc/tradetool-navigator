module.exports = {
  purge:[
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/javascript/**/**/*.vue',
  ],
  darkMode: false,
  theme: {
    extend: {
      colors: {
        ash: {
          ligth: "#F7FAFB",
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
