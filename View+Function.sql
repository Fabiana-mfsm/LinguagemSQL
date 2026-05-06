-- DDL (Criação da tabela)
create database view_funcion;
create table users (
    id serial primary key,
    name varchar(100),
    email varchar(100),
    active boolean
);

insert into users (name, email, active) values
('jefte', 'jefteusabomba@email.com', true),
('dinazinha', 'dinazinha@email.com', false),
('naoseimaisquem', 'naoseimaisquem@email.com', true);

-- função
create or replace function public.check_user_status(p_id int)
	returns text
	language plpgsql
as $function$
declare
	status_do_usuario boolean;
	BEGIN
		select active into status_do_usuario
		from users
		where id = p_id;

		if not found then
			return 'Esse usúario não foi encontrado';
		elseif status_do_usuario = true then
			return 'Usuário ativo';
		else
			return 'Usuário inativo';
		end if;
	END;
$function$
;
-- exemplo de uso
select check_user_status(1);
select check_user_status(2);
select check_user_status(102734);

-- view
create or replace view public.active_users_view as
select id, name, email
from users
where active = true;

-- exemplo de uso
select * from active_users_view;
