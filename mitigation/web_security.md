# Mitigação de Vulnerabilidades Web (Brute Force)

## Problema Identificado
O formulário de login não possui proteção contra múltiplas tentativas automatizadas, permitindo que atacantes descubram senhas através de força bruta.

## Recomendações

1.  **Implementar CAPTCHA:**
    *   Adicionar um desafio CAPTCHA (ex: reCAPTCHA) após algumas tentativas falhas para impedir automação.

2.  **Bloqueio de Conta Temporário:**
    *   Bloquear a conta por um período (ex: 15 minutos) após 3-5 tentativas de login incorretas.

3.  **Autenticação de Dois Fatores (2FA/MFA):**
    *   Exigir um segundo fator de autenticação (SMS, App Authenticator, Token) além da senha.

4.  **Monitoramento e Alertas:**
    *   Implementar logs de segurança que alertem administradores sobre picos de tentativas de login falhas.

5.  **Rate Limiting (WAF):**
    *   Utilizar um Web Application Firewall (WAF) para limitar a taxa de requisições de um mesmo IP.
