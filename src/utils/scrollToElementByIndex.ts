import React from "react";

type ScrollOptions = {
  behavior?: ScrollBehavior;
  block?: ScrollLogicalPosition;
  inline?: ScrollLogicalPosition;
};

function scrollToElementByIndex(
  index: number,
  root: React.RefObject<HTMLElement>,
  selector: string,
  {
    behavior = "auto",
    block = "start",
    inline = "nearest",
  }: ScrollOptions = {},
) {
  const targetElement = root.current?.querySelectorAll(selector)[index];

  targetElement?.scrollIntoView({
    behavior,
    block,
    inline,
  });
}

export { scrollToElementByIndex };
