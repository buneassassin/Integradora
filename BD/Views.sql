

-- Vista de Administrador Resrvas
create view view_AdminReservas as
select 
	concat(p.nombres,' ',p.apellido_paterno,' ', p.apellido_materno) as CLIENTE,er.id_reserva as 'FOLIO RESERVA', er.estatus as ESTATUS,
    er.fecha_hora_reserva as 'FECHA / HORA RESERVA', e.nombre as EVENTO, e.fecha_evento as 'FECHA EVENTO'
from eventos_reservas er
	join clientes c on c.id_cliente =er.id_cliente
	join personas p on p.id_persona = c.id_persona
	join eventos e on e.id_evento = er.id_evento;
-- Vista de Administrador Pedidos(Detalles)
create view view_AdminPedidosDetalles as 
;
-- Vista de Administrador Pedidos
create view view_AdminPedidos as 
select 
	concat(p.nombres, '', p.apellido_paterno,'', p.apellido_materno) as CLIENTE, pd.id_pedido as 'FOLIO PEDIDO'
from pedidos pd
	join clientes c on c.id_cliente = pd.id_cliente
    join personas p on p.id_persona = c.id_persona;

