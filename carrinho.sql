/**
*Projeto 3: Carinho de Compras
*@Adilson dos Santos/Jerry Ferreira
*/
create database dbcarcompraja; 
use dbcarcompraja;

create table carrinho (
codigo int primary key auto_increment,
produto varchar (50) not null,
quantidade varchar (15) not null,
valor varchar (50) not null
);
describe carrinho;

select * from carrinho;

insert into carrinho(codigo,produto,quantidade,valor)
values('1','Monitor',10,250.00);

insert into carrinho(codigo,produto,quantidade,valor)
values('2','Mouse',15,20.00);

insert into carrinho(codigo,produto,quantidade,valor)
values('3','Pendrive',15,35.00);

insert into carrinho(codigo,produto,quantidade,valor)
values('4','Teclado',8,55.00);

insert into carrinho(codigo,produto,quantidade,valor)
values('5','Hd Externo',20,450.00);

insert into carrinho(codigo,produto,quantidade,valor)
values('6','Gabinete',12,550.00);

update carrinho set produto = 'Hd Externo 1TB' where codigo='5';

delete from carrinho where codigo='4';


select * from carrinho order by produto;

select sum(valor * quantidade) as Total from carrinho;
