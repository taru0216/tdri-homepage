# tdri-homepage

樽石デジタル技術研究所合同会社（TDRI）のコーポレートホームページ。

## スタック

- [Astro 5](https://astro.build/) (静的サイトジェネレータ)
- [Tailwind CSS v4](https://tailwindcss.com/) (Vite plugin)
- TypeScript
- Caddy (本番配信 / Docker container)

## サブドメイン

dev-server に登録すると `{label}-{user}-{hash}.eai.entreprenais.com` 形式の URL が自動生成される（hash ベース仕様 #4341）。

- `label`: `homepage`
- `user`: `EAI_GH_USER`（例: `taruishi-ma`）
- `hash`: `sha256("{job_label}-{host}-{phase}").hexdigest()[:8]`

`{job_label}=taruishi-llc`, `{host}=penguin`, `{phase}=dev` 等の組み合わせで一意。

## ローカル開発

```bash
cd portal
npm install
npm run dev   # http://localhost:4321
```

## 本番 build

```bash
docker build -t tdri-homepage:local .
docker run --rm -p 8080:8080 tdri-homepage:local
# → http://localhost:8080
```

## デザイン方針

- 縦スクロール 1 カラム + スクロール連動アニメーション（IntersectionObserver ベースの fade-in-up + parallax）
- 黒×白×アクセント1色（emerald `#0E8060`）のミニマル基調
- 完全オリジナル（外部サイトの 1:1 複製禁止）

## 関連

- 起票 Issue: taru0216/taruishi-llc#1399
- 親リポジトリ: `taru0216/taruishi-llc` の `eai/incubating/homepage` 配下に submodule として配置

## License

Copyright (c) 2026 樽石デジタル技術研究所合同会社. All rights reserved.
