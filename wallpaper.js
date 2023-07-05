import {
  DOMParser,
} from "https://deno.land/x/deno_dom@v0.1.32-alpha/deno-dom-wasm.ts";
import { download } from "https://deno.land/x/download@v1.0.1/mod.ts";

const url = "https://www.pinterest.com/AnzenKodo/imgporn/header";
const html = await fetch(url).then((res) => res.text());

const doc = new DOMParser().parseFromString(html, "text/html");
const query =
  "#mweb-unauth-container > div > div > div:nth-child(5) > div > div.F6l.k1A.zI7.iyn.Hsu > div > div:nth-child(1) > div > div > div.Pj7.sLG.XiG.ho-.m1e > div > div:nth-child(1) > div > div.XiG.zI7.iyn.Hsu > div";
const imgCSS = doc.querySelector(query).getAttribute("style");
const imgUrl = imgCSS.match(/https:\/\/[\w./]*/)[0];

const img = imgUrl.replace(
  "https://i.pinimg.com/200x",
  "https://i.pinimg.com/originals",
);

await download(img, {
  file: "Wallpaper.png",
  dir: Deno.env.get("XDG_PICTURES_DIR"),
});
