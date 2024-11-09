/** @type {import('tailwindcss').Config} */
import containerQueries from "@tailwindcss/container-queries";

export default {
  content: ["./index.html", "./src/**/*.{js,ts,jsx,tsx}"],
  theme: {
    container: {
      center: true,
    },
    extend: {
      spacing: {
        128: "32rem",
        144: "36rem",
        160: "40rem",
      },
      height: {
        128: "32rem",
        144: "36rem",
        160: "40rem",
      },
      minHeight: {
        128: "32rem",
        144: "36rem",
        160: "40rem",
      },
      maxHeight: {
        128: "32rem",
        144: "36rem",
        160: "40rem",
      },
      width: {
        128: "32rem",
        144: "36rem",
        160: "40rem",
      },
      minWidth: {
        128: "32rem",
        144: "36rem",
        160: "40rem",
      },
      maxWidth: {
        128: "32rem",
        144: "36rem",
        160: "40rem",
      },
      size: {
        128: "32rem",
        144: "36rem",
        160: "40rem",
      },
      fontFamily: {
        sans: ["Inter", "system-ui", "sans-serif"],
      },
    },
  },
  plugins: [containerQueries],
};
