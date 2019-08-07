/*MQL de M_SSolve*/

Use M_SSolve

select * from Clientes order by IdCliente asc;
select * from Comodos order by Nome asc;
select * from TiposServicos;
select * from Pedidos;

select C.*, P.*
from Clientes C
inner join Pedidos as P
on C.IdCliente = P.IdCliente;

select PC.*, P.*, C.*
from PedidosComodos PC
join Pedidos P
on P.IdPedido = PC.IdPedido
join Comodos as C
on PC.IdComodo = C.IdComodo;

select PTS.*, P.*, TS.*
from PedidosTiposServicos PTS
join Pedidos P
on P.IdPedido = PTS.IdTipoServico
join TiposServicos as TS
on PTS.IdTipoServico = TS.IdTipoServico;