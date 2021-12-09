CREATE DATABASE CitaWebDB;

CREATE TABLE Beneficiario(
    N_CedulaBeneficiario VARCHAR(20) NOT NULL,
    Nombre_Benef VARCHAR(30),
    Apellido_Benef VARCHAR(30),
#     Keys
    CONSTRAINT Benef_Ced_PK PRIMARY KEY (N_CedulaBeneficiario)
);

CREATE TABLE Paciente_Contac_Num(
    ID_ContacNum_Pac INTEGER NOT NULL AUTO_INCREMENT,
    Number_Contac_Pac VARCHAR(30) NOT NULL,
    #Keys
    CONSTRAINT Contac_Pac_Num_PK PRIMARY KEY (ID_ContacNum_Pac)
);

CREATE TABLE Paciente_Contac(
    ID_Contac_Pac VARCHAR(4) NOT NULL,
    ID_ContacNum_Pac INTEGER NOT NULL AUTO_INCREMENT,
    Etiqueta_Contac_Pac VARCHAR(12) NOT NULL,
#   Keys
    CONSTRAINT Pac_Contac_PK PRIMARY KEY (ID_Contac_Pac),
    CONSTRAINT PacContNum_PacCont_FK FOREIGN KEY (ID_ContacNum_Pac)
        REFERENCES Paciente_Contac_Num(ID_ContacNum_Pac)
);

CREATE TABLE Paciente (
    N_CedulaPaciente VARCHAR(20) NOT NULL,
    N_CedulaBeneficiario VARCHAR(20) NOT NULL,
    N_Seguro_Pac VARCHAR(20) NOT NULL,
    Nombre_A_Pac VARCHAR(30) NOT NULL,
    Nombre_B_Pac VARCHAR(30),
    Apellido_A_Pac VARCHAR(30) NOT NULL ,
    Apellido_B_Pac VARCHAR(30),
    Date_Nacimiento_Pac DATE NOT NULL,
    Email_Pac VARCHAR(30) NOT NULL,
    Constrasena_Pac VARCHAR(30) NOT NULL,
    ID_Contac_Pac VARCHAR(4) NOT NULL,
#    Llaves
    CONSTRAINT Pac_Ced_PK PRIMARY KEY (N_CedulaPaciente),
    CONSTRAINT Pac_Benef_CedBenef_FK FOREIGN KEY (N_CedulaBeneficiario)
                      REFERENCES Beneficiario (N_CedulaBeneficiario),
    CONSTRAINT Pac_PacCont_FK FOREIGN KEY (ID_Contac_Pac)
        REFERENCES Paciente_Contac(ID_Contac_Pac)
);


CREATE TABLE Especialidad(
    ID_Especialidad VARCHAR(20) NOT NULL,
    Nombre_Espec VARCHAR(40) NOT NULL,
#     Keys
    CONSTRAINT Espec_ID_PK PRIMARY KEY (ID_Especialidad)
);

CREATE TABLE Referencia(
    N_Referencia VARCHAR(10) NOT NULL,
    N_CedulaPaciente VARCHAR(20) NOT NULL,
    ID_Especialidad VARCHAR(20) NOT NULL,
    Descripcion_Ref LONGTEXT,
#     Keys
    CONSTRAINT Ref_NRef_PK PRIMARY KEY (N_Referencia),
    CONSTRAINT Ref_Pac_NCed_FK FOREIGN KEY (N_CedulaPaciente)
        REFERENCES Paciente(N_CedulaPaciente),
    CONSTRAINT Ref_Espec_IDEspec_FK FOREIGN KEY (ID_Especialidad)
        REFERENCES Especialidad (ID_Especialidad)
);
# Policlinicas
# Horario
CREATE TABLE Policlinica_Horario_Dia(
    ID_Dia_Hor VARCHAR(12) NOT NULL,
    Nombre_Dia VARCHAR(12),

    PRIMARY KEY (ID_Dia_Hor)
);

CREATE TABLE Policlinica_Horario_Hora(
    ID_Hora_Hor VARCHAR(12) NOT NULL,
    Horas_Hora VARCHAR(30) NOT NULL,

    PRIMARY KEY (ID_Hora_Hor)
);

CREATE TABLE Policlinica_Horario(
    ID_Horario_Polic VARCHAR(12) NOT NULL,
    ID_Dia_Hor VARCHAR(12) NOT NULL,
    ID_Hora_Hor VARCHAR(12) NOT NULL,

    PRIMARY KEY (ID_Horario_Polic),
    FOREIGN KEY (ID_Dia_Hor) REFERENCES Policlinica_Horario_Dia(ID_Dia_Hor),
    FOREIGN KEY (ID_Hora_Hor) REFERENCES Policlinica_Horario_Hora(ID_Hora_Hor)
);

# Ubicación
CREATE TABLE Policlinica_Ubicacion_Provincia(
    ID_Provincia_Ubic INTEGER NOT NULL,
    Name_Ubic VARCHAR(12) NOT NULL,

    PRIMARY KEY (ID_Provincia_Ubic)
);

CREATE TABLE Policlinica_Ubicacion(
    ID_Ubicacion VARCHAR(12) NOT NULL,
    ID_Provincia_Ubic INTEGER NOT NULL,
    Descrip_Ubic LONGTEXT NOT NULL,
    
    PRIMARY KEY (ID_Ubicacion),
    FOREIGN KEY (ID_Provincia_Ubic) REFERENCES Policlinica_Ubicacion_Provincia(ID_Provincia_Ubic)
);

CREATE TABLE Policlinica(
    ID_Polic VARCHAR(12) NOT NULL,
    Nombre_Polic VARCHAR(30),
    ID_Horario_Polic VARCHAR(12) NOT NULL,
    ID_Ubicacion VARCHAR(12) NOT NULL,
#   keys
    PRIMARY KEY (ID_Polic),
    FOREIGN KEY (ID_Horario_Polic) REFERENCES Policlinica_Horario(ID_Horario_Polic),
    FOREIGN KEY (ID_Ubicacion) REFERENCES Policlinica_Ubicacion(ID_Ubicacion)
);

# PERSONAL------------------------------------------------------

CREATE TABLE Personal_Roles(
    ID_Rol_Pers VARCHAR(12) NOT NULL,
    Nombre_Rol VARCHAR(30) NOT NULL,

    PRIMARY KEY (ID_Rol_Pers)
);

CREATE TABLE Personal(
    ID_Personal VARCHAR(10) NOT NULL,
    Nombre_Pers VARCHAR(20) NOT NULL,
    Apellido_Pers VARCHAR(20) NOT NULL,
    Apellido_PersB VARCHAR(20),
    Cedula_Pers VARCHAR(30) NOT NULL,
    Email_Pers VARCHAR(30) NOT NULL,
    Contrasena_Pers VARCHAR(30) NOT NULL,
    ID_Rol_Pers VARCHAR(12) NOT NULL,
#     Keys
    FOREIGN KEY (ID_Rol_Pers) REFERENCES Personal_Roles(ID_Rol_Pers),
    CONSTRAINT Pers_ID_PK PRIMARY KEY (ID_Personal)
);

CREATE TABLE Administrador(
    ID_Personal VARCHAR(10) NOT NULL,
#     Keys
    CONSTRAINT Adm_Pers_IDPer_FK FOREIGN KEY (ID_Personal)
        REFERENCES Personal(ID_Personal),
    CONSTRAINT Adm_IDAdm_PK PRIMARY KEY (ID_Personal)
);

CREATE TABLE Doctor(
    ID_Doctor VARCHAR(12) NOT NULL,
    ID_Personal VARCHAR(10) NOT NULL,
    ID_Polic VARCHAR(12) NOT NULL,
    ID_Especialidad VARCHAR(20) NOT NULL,
#     Keys
    CONSTRAINT Doc_Espec_IDEspec_FK FOREIGN KEY (ID_Especialidad)
                   REFERENCES Especialidad (ID_Especialidad),
    CONSTRAINT Doc_Polic_NumClic_FK FOREIGN KEY (ID_Polic)
                    REFERENCES Policlinica(ID_Polic),
    CONSTRAINT Doc_Pers_IDPers_FK FOREIGN KEY (ID_Personal)
                   REFERENCES Personal (ID_Personal),
    CONSTRAINT Doct_PK PRIMARY KEY (ID_Doctor,ID_Personal)
);

CREATE TABLE Cita_Estado(
    ID_Estado_Cita INTEGER (3) NOT NULL,
    Nombre_Cita_Est VARCHAR(12) NOT NULL,
#   Keys
    CONSTRAINT Cita_Est_PK PRIMARY KEY (ID_Estado_Cita)
);

CREATE TABLE Cita(
    N_Cita INTEGER NOT NULL AUTO_INCREMENT,
    ID_Doctor VARCHAR(12) NOT NULL,
    ID_Especialidad VARCHAR(20) NOT NULL,
    N_CedulaPaciente VARCHAR(20) NOT NULL,
    ID_Estado_Cita INTEGER (3) NOT NULL,
    Fecha_Cita DATE NOT NULL,
    Is_Control BOOLEAN NOT NULL,
#   Keys
    CONSTRAINT Cita_Doct_ID_FK FOREIGN KEY (ID_Doctor)
                REFERENCES Doctor(ID_Doctor),
    CONSTRAINT Cita_Espec_CitaID_FK FOREIGN KEY (ID_Especialidad)
                REFERENCES Especialidad(ID_Especialidad),
    CONSTRAINT Cita_Pac_NumCed_FK FOREIGN KEY (N_CedulaPaciente)
                REFERENCES Paciente(N_CedulaPaciente),
    CONSTRAINT Cita_CitaEst_ID_FK FOREIGN KEY (ID_Estado_Cita)
                REFERENCES Cita_Estado (ID_Estado_Cita),
    CONSTRAINT Cita_PK PRIMARY KEY (N_Cita,ID_Doctor,ID_Especialidad,N_CedulaPaciente)
);