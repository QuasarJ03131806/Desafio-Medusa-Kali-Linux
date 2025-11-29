# Desafio_DIO-Medusa-Kali-Linux
 Simulando um Ataque de Brute Force de Senhas com Medusa e Kali Linux

 # Desafio de Cibersegurança: Ataques de Força Bruta e Mitigação

Este repositório documenta a execução de um desafio prático de cibersegurança focado em ataques de força bruta (Brute Force) e medidas de prevenção. O projeto utiliza **Kali Linux** como máquina atacante e **Metasploitable 2** como alvo vulnerável, explorando serviços como FTP, Web (DVWA) e SMB.

## 🎯 Objetivos

*   Configurar um ambiente controlado para testes de penetração.
*   Executar ataques simulados de força bruta em diferentes protocolos.
*   Documentar os processos, comandos e resultados.
*   Propor medidas de mitigação para as vulnerabilidades exploradas.

## 🛠️ Ferramentas Utilizadas

*   **Kali Linux**: Sistema operacional focado em testes de penetração.
*   **Metasploitable 2**: Máquina virtual vulnerável por design.
*   **Medusa**: Ferramenta de força bruta rápida e paralela.
*   **Hydra**: Ferramenta de força bruta flexível (utilizada para formulários Web).
*   **Nmap**: (Opcional) Para reconhecimento inicial e descoberta de portas.

## ⚙️ Configuração do Ambiente

O ambiente foi configurado utilizando o VirtualBox com duas máquinas virtuais em uma rede interna (Host-Only) para garantir o isolamento e segurança.

*   **Atacante**: Kali Linux (IP: 192.168.56.102)
*   **Alvo**: Metasploitable 2 (IP: 192.168.56.101)

## 🚀 Cenários de Ataque

### 1. Força Bruta em FTP
O serviço FTP (porta 21) do Metasploitable 2 permite autenticação com credenciais fracas. Utilizamos o **Medusa** para testar uma lista de senhas comuns contra o usuário `msfadmin`.

*   **Script**: [`scripts/ftp_bruteforce.sh`](scripts/ftp_bruteforce.sh)
*   **Log de Resultado**: [`logs/ftp_attack.log`](logs/ftp_attack.log)
*   **Mitigação**: [Ver Guia de Hardening FTP](mitigation/ftp_hardening.md)

### 2. Automação em Formulário Web (DVWA)
A aplicação DVWA (Damn Vulnerable Web Application) possui uma página de login vulnerável. Utilizamos o **Hydra** para simular um ataque de dicionário contra o formulário de login.

*   **Script**: [`scripts/web_form_bruteforce.sh`](scripts/web_form_bruteforce.sh)
*   **Log de Resultado**: [`logs/web_attack.log`](logs/web_attack.log)
*   **Mitigação**: [Ver Guia de Segurança Web](mitigation/web_security.md)

### 3. Password Spraying em SMB
O serviço SMB (porta 445) permite a enumeração de usuários. Realizamos um ataque de "Password Spraying", testando uma única senha fraca (`123456`) contra uma lista de usuários válidos, evitando bloqueios de conta.

*   **Script**: [`scripts/smb_password_spray.sh`](scripts/smb_password_spray.sh)
*   **Log de Resultado**: [`logs/smb_attack.log`](logs/smb_attack.log)
*   **Mitigação**: [Ver Guia de Hardening SMB](mitigation/smb_hardening.md)

## 📂 Estrutura do Repositório

*   `/wordlists`: Listas de usuários e senhas utilizadas nos testes.
*   `/scripts`: Scripts Shell com os comandos utilizados para reproduzir os ataques.
*   `/logs`: Logs simulados demonstrando o sucesso dos ataques.
*   `/mitigation`: Documentos detalhando como corrigir as vulnerabilidades.

## 🛡️ Conclusão

Este desafio demonstrou a importância de políticas de senhas fortes e configurações seguras de serviços. Ferramentas automatizadas como Medusa e Hydra podem comprometer sistemas em minutos se as devidas precauções não forem tomadas. A implementação de 2FA, rate limiting e monitoramento de logs são essenciais para a defesa moderna.

---
*Projeto desenvolvido para o Desafio de Cibersegurança da DIO.*

<img width="1792" height="1137" alt="Captura de Tela 2025-11-29 às 19 09 36" src="https://github.com/user-attachments/assets/de986024-82db-4508-b270-4b053429d6df" />

<img width="1680" height="1050" alt="Captura de Tela 2025-11-29 às 19 10 36" src="https://github.com/user-attachments/assets/39ff0604-46b6-40c7-aa46-ff9fbc7bef35" />

<img width="1792" height="1137" alt="Captura de Tela 2025-11-29 às 19 13 43" src="https://github.com/user-attachments/assets/4a304239-d203-4864-8793-f5d83fb98574" />




