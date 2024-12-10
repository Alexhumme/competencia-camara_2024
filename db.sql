create database eventy;
use eventy;

create table usuarios(
    codigo int not null primary key auto_increment, 
    representante varchar(45) not null,
    identificacion varchar(25) not nul,
    nit varhcar(25) not null,
    registro_mercantil varchar(125) not null,
    ubicacion varchar(125) not null,
    descripcion varchar(500) not null,
    tamaño varchar(25) not null
);



create table fotos_usuarios(
    codigo int not null primary key auto_increment,
    foto int not null,
    usuario int not null,
    foreign key (usuario) references usuarios(codigo) on delete cascade on update cascade,
    foreign key (foto) references fotos(codigo) on delete cascade on update cascade
);


create table fotos_eventos(
    codigo int not null primary key auto_increment,
    foto int not null,
    evento int not null,
    foreign key (evento) references eventos(codigo) on delete cascade on update cascade,
    foreign key (foto) references fotos(codigo) on delete cascade on update cascade
);


create table fotos_lugares(
    codigo int not null primary key auto_increment,
    foto int not null,
    lugar int not null,
    foreign key (lugar) references lugares(codigo) on delete cascade on update cascade,
    foreign key (foto) references fotos(codigo) on delete cascade on update cascade
);


create table fotos(
    codigo int not null primary key auto_increment,
    url varchar(500) not null
);

create table ruta(
    codigo int not null primary key auto_increment,
    titulo varchar(125) not null,
    valor double not null,
    usuario int not null,
    foreign key (usuario) references usuarios(codigo) on delete cascade on update cascade
);

create table eventos(
    codigo int not null primary key auto_increment
    titulo varchar(125) not null,
    valor double not null,
    descripcion varchar(500) not null,
    fecha_inicio date not null,
    fecha_fin date not null,
    usuario int not null,
    foreign key (usuario) references usuarios(codigo) on delete cascade on update cascade
);


create table evento_lugar(
    codigo int not null primary key auto_increment
    evento int not null,
    lugar int not null
);


create table favoritos(
    codigo int not null primary key auto_increment,
    fecha timestamp not null,
    evento int not null,
    usuario int not null
);




create table lugares(
    codigo int not null primary key auto_increment,
    nombre varchar(125) not null,
    ubicacion varchar(125) not null,
    tipo varchar(25) not null, 
    detalles varchar(500) not null,
    usuarios int not null,
    coordenadas int not null,
);


class coordenadas{
    codigo int not null primary key auto_increment
    latitud float not null,
    longitud float not null
)
