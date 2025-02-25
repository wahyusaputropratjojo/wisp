import { Meta, StoryObj } from "@storybook/react";

import { Badge } from "@components/ui/badge";

type Story = StoryObj<typeof Badge>;

const meta: Meta<typeof Badge> = {
  tags: ["autodocs"],
  component: Badge,
  argTypes: {
    intent: {
      options: ["primary", "secondary", "destructive"],
      control: "radio",
    },
    size: {
      options: ["small", "medium", "large"],
      control: "radio",
    },
  },
};

const Primary: Story = {
  args: {
    children: "Badge",
  },
};

export default meta;
export { Primary };
