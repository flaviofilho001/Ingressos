# Ingressos - Venda de Ingressos com Reserva de Assentos

Sistema de venda de ingressos com reserva temporaria de assentos, pagamento
simulado, idempotencia, SAGA para compensacao e Transactional Outbox.

## Equipe
- Flavio Filho - @flaviofilho001
- John Victor - @johnvictor01

## Tema
Venda de ingressos com reserva de assentos: reserva temporaria, pagamento
simulado, idempotencia em tentativas repetidas, SAGA para compensacao e
Transactional Outbox.

## Objetivos
- Evitar venda duplicada de assentos
- Garantir idempotencia em requisicoes repetidas
- Manter consistencia entre servicos com SAGA e compensacoes
- Publicar eventos de forma confiavel com Transactional Outbox

## Estrutura planejada
/docs        documentacao e diagramas
/services    servicos (reserva, pagamento, pedidos, orquestrador)
/tests       testes de cenarios

## Cronograma
- Projeto 01: Definicao do grupo e tema (09/10/2026)
- Projeto 02: Arquitetura e modelagem (06/11/2026)

## Como executar
