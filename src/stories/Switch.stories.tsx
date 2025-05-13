import { type Meta, type StoryObj } from "@storybook/react";

import { Switch } from "@components/ui/switch";

type Story = StoryObj<typeof Switch>;

const meta: Meta<typeof Switch> = {
  tags: ["autodocs"],
  component: Switch,
};

const Primary: Story = {
  args: {},
};

export default meta;
export { Primary };
