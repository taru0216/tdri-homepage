import { defineConfig } from 'astro/config';
import tailwindcss from '@tailwindcss/vite';

// https://astro.build/config
export default defineConfig({
  // 公開 URL は dev-server.py が hash ベースで自動生成するため、ここでは空にしておく
  // （絶対 URL が必要な場合のみ設定）
  vite: {
    plugins: [tailwindcss()],
  },
});
