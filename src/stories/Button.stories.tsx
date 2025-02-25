import { Meta, StoryObj } from "@storybook/react";

import { Button } from "@components/ui/button";

type Story = StoryObj<typeof Button>;

const meta: Meta<typeof Button> = {
  tags: ["autodocs"],
  component: Button,
  argTypes: {
    intent: {
      options: ["primary", "secondary", "destructive"],
      control: "radio",
    },
    modifier: {
      options: ["outline", "plain"],
      control: "radio",
    },
    size: {
      options: ["small", "medium", "large"],
      control: "radio",
    },
    align: {
      options: ["start", "center", "end"],
      control: "radio",
    },
    fullWidth: {
      control: "boolean",
    },
    disabled: {
      control: "boolean",
    },
  },
};

const Primary: Story = {
  args: {
    children: "Button",
    intent: "primary",
  },
};

const Secondary: Story = {
  args: {
    children: "Button",
    intent: "secondary",
  },
};

const Destructive: Story = {
  args: {
    children: "Button",
    intent: "destructive",
  },
};

export default meta;
export { Primary, Secondary, Destructive };
