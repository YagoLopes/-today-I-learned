### COMO CRIAR BONS PROJETOS BACKEND UTILIZANDO NODE

- [ ] Inicialize um repositório git

  - Apenas inicialize o git
  - Adicione um endereço remoto

- [ ] Configure o .prettierrc

  - Crie um arquivo com o nome .prettierec
  - Cole essas configurações no arquivo

  ```
  {
    "singleQuote": true,
    "trailingComma": "es5"
    }

  ```

- [ ] Configure o .eslintrc.json

  - Instale o eslint no projeto com o comando yarn add eslint
  - Inicialize o eslint com o comando yarn eslint --init
  - Configure o com essas configurações

  ```
  {
  "env": {
    "commonjs": true,
    "es6": true,
    "node": true
  },

  "extends": ["airbnb-base", "prettier"],
  "plugins": ["prettier"],
  "globals": {
    "use": "readonly",
    "Atomics": "readonly",
    "SharedArrayBuffer": "readonly"
  },
  "parserOptions": {
    "ecmaVersion": 2018
  },
  "rules": {
    "prettier/prettier": "error",
    "class-methods-use-this": "off",
    "consistent-return": "off",
    "no-param-reassign": "off"
  }
  }

  ```

- [ ] Configure o .editorconfig

  - Botão direito na raiz do projeto "gerar editor config"

- [ ] Configure o debugger do vs code - Clique na baratinha - Selecione a opção gerar launch.json - Cole as seguintes configurações no arquivo

        ```
      {

  // Use IntelliSense to learn about possible attributes.
  // Hover to view descriptions of existing attributes.
  // For more information, visit: https://go.microsoft.com/fwlink/?linkid=830387
  "version": "0.2.0",
  "configurations": [
  {
  "type": "node",
  "request": "launch",
  "name": "Launch Program",
  "program": "${workspaceFolder}/server.js"
  }
  ]
  }

        ```