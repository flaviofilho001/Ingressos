# Ingressos - Venda de Ingressos com Reserva de Assentos

Sistema distribuido de venda de ingressos com reserva temporaria de assentos, pagamento
simulado, idempotencia, SAGA para compensacao e Transactional Outbox, baseado em
**Arquitetura de Microsservicos**.

## Equipe
- Flavio Filho - @flaviofilho001 (Matrícula: 20230146390)
- John Victor - @johnvictor01 (Matrícula: 20220125879)

## Tema
Venda de ingressos com reserva de assentos: reserva temporaria, pagamento
simulado, idempotencia em tentativas repetidas, SAGA para compensacao e
Transactional Outbox em uma arquitetura de microsservicos.

## Stack Tecnologico e Padroes
- **Arquitetura**: Microservices Architecture Pattern (Database-per-Service)
- **Backend**: C# / .NET 10 (ASP.NET Core Web API)
  - `ReservationService` (Porta 5001): Catalogo, assentos, lock pessimista e Outbox.
  - `OrderSagaService` (Porta 5002): Checkout, Orquestracao SAGA e compensacoes.
  - `PaymentService` (Porta 5003): Pagamento simulado com Strategy Pattern e Idempotencia.
- **Frontend**: React (TypeScript + Vite + Tailwind CSS) (Porta 3000)
- **Bancos e Cache**: PostgreSQL 16 (esquemas isolados) e Redis 7 (locks e TTL)
- **Mensageria**: RabbitMQ 3.13 com MassTransit 8 (SAGA State Machine e Outbox Relay)
- **Deploy & Infra**: Railway (PostgreSQL, Redis, RabbitMQ e Microsservicos)
- **Edge & Seguranca**: Cloudflare (SSL, CDN, WAF, Edge Rate Limiting e Gateway)

## Cronograma
- Projeto 01: Definicao do grupo e tema (09/10/2026) [Concluido]
- Projeto 02: Arquitetura e modelagem (06/11/2026) [Entregue - ver PROJETO_02_DOCUMENTACAO.txt]

## Documentacao do Projeto 02
A documentacao completa da arquitetura de microsservicos (Diagramas C4 Niveis 1 e 2, 6 ADRs, Padroes Arquiteturais, Stack, Alinhamento aos Criterios de Avaliacao e Divisao de Tarefas) encontra-se no arquivo:
- [`PROJETO_02_DOCUMENTACAO.txt`](./PROJETO_02_DOCUMENTACAO.txt)

## Como executar localmente
Para iniciar toda a infraestrutura e os microsservicos via Docker Compose:
```bash
docker-compose up -d --build
```
- Frontend SPA (React):               http://localhost:3000
- API de Reservas (Swagger):          http://localhost:5001/swagger
- API de Pedidos & SAGA (Swagger):    http://localhost:5002/swagger
- API de Pagamento Simulado (Swagger): http://localhost:5003/swagger
- RabbitMQ Management Dashboard:      http://localhost:15672 (guest/guest)
- PostgreSQL:                         localhost:5432 (ingressos_user/ingressos_password)
- Redis:                              localhost:6379
