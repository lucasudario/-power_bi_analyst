# Projeto Power BI - Esquema Estrela

Este projeto tem como base a tabela Financial Sample, onde foi construído um modelo dimensional em esquema estrela com as seguintes tabelas:

## Tabelas Criadas

### Tabela Fato
- **F_Vendas**: ID, Produto, Unidades Vendidas, Preço, Desconto, Segmento, País, Vendedor, Lucro, Data

### Tabelas Dimensão
- **D_Produtos**: Produto, Médias e valores estatísticos de vendas
- **D_Produtos_Detalhes**: Preço de fabricação, preço de venda, unidades
- **D_Descontos**: Níveis de desconto
- **D_Detalhes**: Informações complementares
- **D_Calendário**: Gerada com DAX (`CALENDAR()`)

## Funções DAX Utilizadas
- `CALENDAR()`, `MEDIAN()`, `MAX()`, `MIN()`, `AVERAGE()`, `RELATED()`, `CALCULATE()`

## Observações
O modelo está salvo em .pbix e inclui o diagrama relacional do esquema estrela.