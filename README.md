# 🐳 Docker Bash Toolkit

Um toolkit pequeno rodando em container para resolver os problemas grandes de manutenção de servidor.

## ⚙️ Porque esse projeto existe

Este projeto foi criado para solucionar um problema comum de manutenções de servidores ou máquinas no dia a dia.
O foco principal é automatizar tarefas repetitivas de manutenção que, se esquecidas, viram dor de cabeça.

       Criei 4 scripts de manutenção, com menu interativo, que cobrem situações reais:

| Script | O que faz |
|---|---|
| `disk-monitor.sh` | Verifica o uso de disco e alerta se passar do limite (padrão: 80%) |
| `healthcheck.sh` | Checa se um site está online via `curl` + status HTTP |
| `backup.sh` | Compacta uma pasta do projeto em `.tar.gz` com data no nome |
| `log-cleaner.sh` | Apaga arquivos `.log` com mais de X dias (padrão: 365) |

Tudo isso acessado através do `menu.sh`, um menu interativo feito com `case` e `read`.

## 🗂️ Estrutura do projeto

```
Docker-bash-toolkit/
├── .github/
│   └── workflows/
│       └── test.yml
├── Scripts/
│   ├── disk-monitor.sh
│   ├── healthcheck.sh
│   ├── backup.sh
│   └── log-cleaner.sh
├── logs/
│   └── execucao.log
├── Dockerfile
├── menu.sh
├── test.sh
└── README.md
```

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

Ao subir o container, o `menu.sh` é executado automaticamente. Basta digitar o número da opção desejada.

## ⚙️ Parâmetros configuráveis

Dois scripts aceitam parâmetros opcionais ao rodar localmente:

```bash
# Verificar disco com limite customizado (padrão: 80%)
./Scripts/disk-monitor.sh 90

# Limpar logs com número de dias customizado (padrão: 365)
./Scripts/log-cleaner.sh 30
```

## 📋 Log de execução

Cada vez que um script roda, o resultado é registrado automaticamente em `logs/execucao.log` com data e hora:

```
2026-06-23 21:26:17 - OK: disco em 10% de uso
2026-06-23 21:30:45 - Logs com mais de 365 dias foram removidos
2026-06-23 21:30:48 - Backup criado: backup-2026-06-23.tar.gz
2026-06-23 21:30:53 - OK: Seu site está online 200
```

Isso permite acompanhar o histórico de execuções e identificar quando um problema ocorreu.

## 🧪 Testes

O projeto tem um script de testes (`test.sh`) que verifica se cada script roda e produz output:

```bash
chmod +x test.sh Scripts/*.sh
./test.sh
```

Output esperado:

```
=== Rodando Tests ===
PASS: disk-monitor
PASS: helthcheck
PASS: log-clean
PASS: backup
```

Os testes também rodam automaticamente via **GitHub Actions** a cada push no `main`.

## 🛠️ Tecnologias e conceitos usados

- **Bash**: `grep`, `awk`, `tr`, `curl`, `tar`, `find`, `date`, `dirname`
- **Lógica de script**: variáveis, `if/else`, `case`, `read`, `chmod +x`, parâmetros com `${1:-default}`
- **Docker**: imagem baseada em Alpine Linux, com `bash` e `curl` instalados manualmente
- **GitHub Actions**: CI/CD rodando testes automaticamente a cada push
- **Observabilidade**: log de execução com timestamp em arquivo dedicado
- **Git/GitHub**: histórico de commits documentando o progresso do projeto

## 📚 Aprendizados

Esse projeto foi minha primeira imersão prática em DevOps. Alguns dos perrengues (e aprendizados) pelo caminho:

- Diferença entre caminho relativo e absoluto fazendo os scripts se acharem dentro do container
- Alpine Linux é minimalista — `bash` e `curl` precisam ser instalados manualmente no `Dockerfile`
- Case sensitivity entre macOS e Linux pegou alguns nomes de arquivo de surpresa
- Debugar Dockerfile na unha, lendo erro de build linha por linha
- `dirname "$0"` pra fazer o script saber onde ele mesmo está, independente de onde é chamado

## 🔭 Próximos passos

- [x] Adicionar testes simples para os scripts
- [x] Melhorar tratamento de erros (inputs inválidos no menu)
- [x] GitHub Actions rodando testes automaticamente
- [ ] Automatizar a execução dos scripts com `cron`

## 👤 Autor

**Isac Andrade**
Estudante de Engenharia de Software (Católica de Brasília), aprendendo DevOps por conta própria.

[GitHub](https://github.com/Isac-Andrade)