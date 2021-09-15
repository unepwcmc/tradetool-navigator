module.exports = {
  purge: ["./index.html", "./src/**/*.{vue,js,ts,jsx,tsx}"],
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
      minWidth: {
        "0": "0",
        "1/4": "25%",
        "1/2": "50%",
        "3/4": "75%",
        full: "100%",
      },
      fontFamily: {

        'sans': ['Raleway', 'sans-serif','system-ui'],
 
        // 'serif': ['ui-serif', 'Georgia', ...],
 
        // 'mono': ['ui-monospace', 'SFMono-Regular', ...],
 
        // 'display': ['Oswald', ...],
 
        // 'body': ['"Open Sans"', ...],
       }
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
};
