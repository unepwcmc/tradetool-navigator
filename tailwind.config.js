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
        "legend-icon": "url('../images/LegendIcon.svg')",
        
        "data-platform": "url('../images/DigitalPlatforms.svg')",
        "data-portal": "url('../images/DataPortal.svg')",
        "data-services": "url('../images/DataServices.svg')",
        "data-source": "url('../images/DataSource.svg')",
        "database": "url('../images/Database.svg')",
        "decision-support-tool": "url('../images/decisionSupportTool.svg')",
        "digital-reports": "url('../images/DigitalReports.svg')",
        "flexible-analysis-platform": "url('../images/FlexibleAnalysisPlatform.svg')",
        "library-catalogue": "url('../images/LibraryCatalogue.svg')",
        "model": "url('../images/Modal.svg')",
        "other---statistics": "url('../images/Statistics.svg')",
        "other---initiative-organisation": "url('../images/InitativeOrganisation.svg')",
        "other---repository": "url('../images/Repository.svg')",
        "visualisation---dashboard": "url('../images/VisualisationDashboard.svg')",
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