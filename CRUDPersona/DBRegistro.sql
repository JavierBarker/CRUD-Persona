drop database if exists DBRegistro;
create database DBRegistro;
use DBRegistro;

create table Persona(
	codigoPersona int not null auto_increment,
    DPI varchar(15) not null,
    nombrePersona varchar(125) not null,
    primary key PK_codigoPersona (codigoPersona)
);

insert into Persona(DPI, nombrePersona) values ('1706402621547','Javier Barker');
insert into Persona(DPI, nombrePersona) values ('2326369966678','Jose Gongora');
insert into Persona(DPI, nombrePersona) values ('4898476516528','Jose Lopez');
insert into Persona(DPI, nombrePersona) values ('1996871313645','Pablo Lopez');
insert into Persona(DPI, nombrePersona) values ('9215213357798','Max Sanchez');