# Mitigação de Vulnerabilidades FTP

## Problema Identificado
O serviço FTP permite autenticação com credenciais fracas e transmite dados (incluindo senhas) em texto claro, facilitando a interceptação e ataques de força bruta.

## Recomendações

1.  **Desabilitar o Serviço FTP se não for necessário:**
    *   Se a transferência de arquivos não for crítica, desative o serviço.
    
2.  **Utilizar SFTP ou FTPS:**
    *   Substitua o FTP padrão por SFTP (SSH File Transfer Protocol) ou FTPS (FTP over SSL) para criptografar a conexão.

3.  **Implementar Políticas de Senha Fortes:**
    *   Exigir senhas complexas (mínimo de 12 caracteres, uso de maiúsculas, minúsculas, números e símbolos).
    *   Impedir o uso de senhas comuns ou padrão.

4.  **Limitar Tentativas de Login (Rate Limiting):**
    *   Configurar o servidor para bloquear o IP após um número X de tentativas falhas (ex: Fail2Ban).

5.  **Desabilitar Login Anônimo:**
    *   Garantir que o acesso anônimo esteja desativado nas configurações do servidor FTP.
