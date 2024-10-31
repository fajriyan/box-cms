// tailwind.config.js
module.exports = {
  content: [
    "./content/**/*.md",
    "./resources/views/**/*.antlers.html",
    "./resources/views/**/*.antlers.php",
    "./resources/views/**/*.blade.php",
    "./resources/views/vendor/**/*.blade.php",
    "./resources/views/vendor/statamic/**/*.blade.php",
    "./resources/views/vendor/statamic/partials/*.blade.php",
    "./resources/views/**/*.blade.php",
    "./resources/**/*.blade.php",
    "./resources/js/**/*.js",
  ],
  theme: {
    extend: {
      keyframes: {
        shake: {
          '0%, 100%': { transform: 'translateX(0)' },
          '10%, 30%, 50%, 70%, 90%': { transform: 'translateX(-5px)' },
          '20%, 40%, 60%, 80%': { transform: 'translateX(5px)' },
        },
      },
      animation: {
        shake: 'shake 0.5s ease-in-out',
      },
    },
  },
  plugins: [require("@tailwindcss/typography"), require("flowbite/plugin")],
};
