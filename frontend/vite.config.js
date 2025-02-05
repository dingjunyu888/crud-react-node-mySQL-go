import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

// https://vitejs.dev/config/
export default defineConfig({
  server: {
    host: '0.0.0.0',
    port: process.env.PORT || 3000  // Fallback to 3000 if PORT is not set
  },
  plugins: [react()],
})
