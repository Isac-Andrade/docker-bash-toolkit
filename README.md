# 🐳Docker Bash Toolkit

Um toolkit pequeno rodando em container para resolver os problemas grandes de manutenção de servidor.

## ⚙️Porque esse projeto existe 

Este projeto foi criado para solucionar um problema comum de manutenções de servidores ou maquinas no dia a dia.
O foco principal é automatizar tarefas repetitivas de manutenção que, se esquecidas, viram dor de cabeça.
  
      Criei 4 Scripts de manutenção,com menu interativo, que cobrem situações reais.

| Script | O que faz |
|---|---|
| `disk-monitor.sh` | Verifica o uso de disco e alerta se passar de 80% |
| `healthcheck.sh` | Checa se um site está online (via `curl` + status HTTP) |
| `backup.sh` | Compacta uma pasta do projeto em `.tar.gz`, com data no nome |
| `log-cleaner.sh` | Apaga arquivos `.log` com mais de X dias |

Tudo isso acessado através do `menu.sh`, um menu interativo feito com `case` e `read`.

## 🗂️ Estrutura do projeto
Docker-bash-toolkit/

├── Scripts/

│   ├── disk-monitor.sh

│   ├── healthcheck.sh

│   ├── backup.sh

│   └── log-cleaner.sh

├── Dockerfile

├── menu.sh

└── README.md

## 🚀 Como rodar

### 1. Clonar o repositório

```bash
git clone https://github.com/Isac-Andrade/Docker-bash-toolkit.git
cd Docker-bash-toolkit
```

### 2. Buildar a imagem

```bash
docker build -t bash-toolkit .
```

### 3. Rodar o container

```bash
docker run -it --rm bash-toolkit
```

### 4. Usar o menu

Ao subir o container, o `menu.sh` é executado automaticamente:

=============================

🐳 DOCKER BASH TOOLKIT

1. Verificar uso de disco
2. Checar status de um site
3. Fazer backup de uma pasta
4. Limpar logs antigos
5. Sair

Basta digitar o número da opção desejada e seguir as instruções de cada script.

## 🛠️ Tecnologias e conceitos usados

- **Bash**: `grep`, `awk`, `tr`, `curl`, `tar`, `find`, `date`
- **Lógica de script**: variáveis, `if/else`, `case`, `read`, `chmod +x`
- **Docker**: imagem baseada em Alpine Linux, com `bash` e `curl` instalados manualmente (não vêm por padrão na imagem)
- **Git/GitHub**: histórico de commits documentando o progresso do projeto

## 📚 Aprendizados

Esse projeto foi minha primeira imersão prática em DevOps. Alguns dos perrengues (e aprendizados) pelo caminho:

- Diferença entre caminho relativo e absoluto fazendo os scripts se acharem dentro do container
- Alpine Linux é minimalista — `bash` e `curl` precisam ser instalados manualmente no `Dockerfile`
- Case sensitivity entre macOS e Linux pegou alguns nomes de arquivo de surpresa
- Debugar Dockerfile na unha, lendo erro de build linha por linha

## 🔭 Próximos passos

- [ ] Automatizar a execução dos scripts com `cron`
- [ ] Adicionar testes simples para os scripts
- [ ] Melhorar tratamento de erros (inputs inválidos no menu)

## 👤 Autor

**Isac Andrade**
Estudante de Engenharia de Software (Católica de Brasília), aprendendo DevOps por conta própria.

[GitHub](https://github.com/Isac-Andrade)