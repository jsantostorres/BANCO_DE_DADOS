create table alunos (
	matricula int auto_increment primary key unique,
    nomeCompleto varchar(100) not null,
    curso varchar(100) not null,
    email varchar(100) not null
);

create table professores (
	id int auto_increment primary key unique,
    nomeCompleto varchar(100) not null,
    especializacao varchar(100) not null
);

create table disciplinas (
	id int auto_increment primary key unique,
    nome varchar(100) not null,
    cargaHoraria varchar(5) not null,
    profID int unique,
    foreign key (profID) references professores(id)
);

create table matricula (
	id int auto_increment primary key unique,
    semestre varchar(100) not null,
    alunoID int unique,
    foreign key (alunoID) references alunos(matricula)
);

insert into alunos (nomeCompleto, curso, email) values ("Leon Kennedy Sergipano Rodgrigues", "Biologia", "quirrelzito@gmail.com");
insert into alunos (nomeCompleto, curso, email) values ("Aphelios Paraíba", "Geografia", "phelios@gmail.com");
insert into alunos (nomeCompleto, curso, email) values ("Alez Skibidi Toilet", "Computação", "skibidisigmarizz@gmail.com");
insert into alunos (nomeCompleto, curso, email) values ("Joker Persona 5 Demiurgo Oliveira", "Filosofia", "mitoclock@gmail.com");
insert into alunos (nomeCompleto, curso, email) values ("Maria Plim Plim", "Pedagogia", "piriplimplim@gmail.com");

select * from alunos;

insert into professores (nomeCompleto, especializacao) values ("Walter White", "Química (do bem)");
insert into professores (nomeCompleto, especializacao) values ("Heisenberg", "Química (do mal)");
insert into professores (nomeCompleto, especializacao) values ("Saulo Bom Homem", "Direito");
insert into professores (nomeCompleto, especializacao) values ("Mark Fischbach", "Letras - Português");
insert into professores (nomeCompleto, especializacao) values ("Helena Fernandes", "Pedagogia");

select * from professores;
