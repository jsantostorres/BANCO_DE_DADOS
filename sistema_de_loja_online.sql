create table cliente (
	id int auto_increment primary key unique,
    nome varchar(50) not null,
    telefone varchar(20),
    email varchar(50) not null unique
);

create table produto (
	id int auto_increment primary key unique,
    nome varchar(100) not null,
    preco double not null,
    quantEstoque int not null
);

create table pedido (
	id int auto_increment primary key unique,
    dataCompra date not null,
    quantComprada int not null,
    clienteID int unique,
    produtoID int unique,
    foreign key (clienteID) references cliente(id),
    foreign key (produtoID) references produto(id)
);

insert into cliente (nome, telefone, email) values ("Um Siri Fazendo Barra", "71997463729", "siribaiano@gmail.com");
insert into cliente (nome, telefone, email) values ("Donatello", "12564353678", "doninhoninja@gmail.com");

insert into produto (nome, preco, quantEstoque) values ("BIS Black", 5.50, 400);
insert into produto (nome, preco, quantEstoque) values ("Pizza de Pepperoni", 62.0, 50);

insert into pedido (dataCompra, quantComprada, clienteID, produtoID) values ("2026/03/10", 2, 1, 1);
insert into pedido (dataCompra, quantComprada, clienteID, produtoID) values ("2026/02/28", 5, 2, 2);

select * from cliente;
select * from produto;
select * from pedido;
