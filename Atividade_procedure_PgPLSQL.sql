-- DDL (Criação das tabelas)

drop table if exists vendas;
drop table if exists produtos;

create table produtos(
    id int not null,
    nome varchar(100) not null,
    preco decimal(10,2) not null,
    estoque int not null,
    constraint produtos_pk primary key (id)
);

create table vendas(
    id serial primary key,
    produto_id int,
    quantidade int,
    valor_total decimal(10,2),
    data_venda timestamp default current_timestamp,
    constraint fk_produto foreign key (produto_id) references produtos(id)
);

insert into produtos (id, nome, preco, estoque) values 
(1, 'urso_pelucia', 5.00, 200),
(2, 'bolsa', 60.00, 50),
(3, 'fita_led', 20.00, 90);

-- Procedure

create or replace procedure realizar_venda(
    in p_produto_id int,
    in p_quantidade int
)
language plpgsql
as $procedure$
declare
    v_preco decimal(10,2);
    v_estoque int;
    v_total decimal(10,2);
begin

    select preco, estoque
    into v_preco, v_estoque
    from produtos
    where id = p_produto_id;

    if not found then
        raise notice 'produto não encontrado';

    elsif v_estoque < p_quantidade then
        raise notice 'estoque insuficiente';

    else
        v_total := v_preco * p_quantidade;

        insert into vendas (produto_id, quantidade, valor_total)
        values (p_produto_id, p_quantidade, v_total);

        update produtos
        set estoque = estoque - p_quantidade
        where id = p_produto_id;

        raise notice 'venda realizada com sucesso';
    end if;

end;
$procedure$;

-- Execução

call realizar_venda(1, 2);
call realizar_venda(1, 220);
call realizar_venda(4, 1);


