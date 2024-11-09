import { useEffect, useRef } from "react";

type YouTubeProps = {
  src: string;
};

declare global {
  interface Window {
    onYouTubeIframeAPIReady: () => void;
    // eslint-disable-next-line @typescript-eslint/no-explicit-any
    YT: any;
  }
}

function YouTube({ src }: YouTubeProps) {
  const playerRef = useRef<HTMLIFrameElement | null>(null);

  useEffect(() => {
    const script = document.createElement("script");
    script.src = "https://www.youtube.com/iframe_api";
    document.body.appendChild(script);

    window.onYouTubeIframeAPIReady = new window.YT.Player(playerRef.current, {
      videoId: src,
    });
  }, [src]);

  return <iframe ref={playerRef} src={src} />;
}

export { YouTube };
