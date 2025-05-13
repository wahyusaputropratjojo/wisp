import { type Preview } from "@storybook/react";

import "../src/main.css";

const preview: Preview = {
  parameters: {
    controls: {
      matchers: {
        color: /(background|color)$/i,
        date: /Date$/i,
      },
    },
    backgrounds: {
      values: [
        {
          name: "Dark",
          value: "var(--color-neutral-900)",
        },
        {
          name: "Light",
          value: "var(--color-neutral-100)",
        },
      ],
      default: "Dark",
    },
  },
};

export default preview;
