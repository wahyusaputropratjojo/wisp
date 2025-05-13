import { type Meta, type StoryObj } from "@storybook/react";
import { BoldIcon } from "lucide-react";

import { Toggle } from "@components/ui/toggle";

type Story = StoryObj<typeof Toggle>;

const meta: Meta<typeof Toggle> = {
  tags: ["autodocs"],
  component: Toggle,
};

const Primary: Story = {
  args: {
    children: <BoldIcon />,
  },
};

export default meta;
export { Primary };
