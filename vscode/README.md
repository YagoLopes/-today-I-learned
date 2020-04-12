## CONFIGURANDO STYLE GUIDE

### Configure o .prettierrc

- Crie um arquivo com o nome .prettierrc
- Cole essas configurações no arquivo

```
{
  "singleQuote": true,
  "trailingComma": "es5"
}

```

### Configure o .eslintrc.json

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

- Instale os seguintes plugins yarn add prettier eslint-config-prettier eslint-plugin-prettier -D
- Utilize yarn eslint --fix app --ext .js para chegar varios arquivos dentro de uma pasta

### Configure o .editorconfig

- Botão direito na raiz do projeto "gerar editor config"

### Configure o debugger do vs code

- Clique no icone da barata na lateral esquerda do painel do vscode
- Selecione a opção gerar launch.json
- Cole as seguintes configurações no arquivo

```
  {

    linkid=830387
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
