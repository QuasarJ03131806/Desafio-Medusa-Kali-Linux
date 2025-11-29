# Mitigação de Vulnerabilidades SMB

## Problema Identificado
O serviço SMB está exposto e permite enumeração de usuários e tentativas de login com senhas fracas (Password Spraying).

## Recomendações

1.  **Restringir Acesso de Rede:**
    *   O SMB não deve estar exposto à internet pública. Utilize Firewalls para restringir o acesso apenas a redes confiáveis ou VPNs.

2.  **Desabilitar SMBv1:**
    *   O protocolo SMBv1 é obsoleto e vulnerável (ex: WannaCry). Garanta que apenas SMBv2 ou superior esteja habilitado.

3.  **Assinatura SMB (SMB Signing):**
    *   Habilitar a assinatura SMB para prevenir ataques de "Man-in-the-Middle".

4.  **Políticas de Bloqueio de Conta:**
    *   Configurar políticas de GPO (Group Policy Object) para bloquear contas após tentativas falhas, mas com cuidado para não causar Negação de Serviço (DoS) em ataques de Spraying.

5.  **Monitoramento de Logs:**
    *   Monitorar eventos de falha de login (Event ID 4625 no Windows) para detectar padrões de ataque.
