# index.tsxとは

react開発のベースとなるファイル。  

```typescript
import React from 'react';
import ReactDOM from 'react-dom/client';
...
const root = ReactDOM.createRoot(
  document.getElementById('root') as HTMLElement
);
```

この部分で、`public/index.html`の`<div id="root">`を取得し、ReactのルートDOMとして構築している。  

```typescript
import App from './App';
...
root.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>
);
```

この部分でSPAをレンダリングしている。  
`App`とは`App.js`の`App()`関数のことである。
