INSERT INTO Beneficiario (N_CedulaBeneficiario,Nombre_Benef,Apellido_Benef)
VALUES("2-1387-1786","Christopher","Banks"),
    ("8-5165-6468","Brittany","Pratt"),
    ("8-2633-5447","Caleb","Copeland"),
    ("1-2600-7766","Hermione","O'brien"),
    ("3-2622-2846","Brennan","Sawyer");

INSERT INTO Paciente_Contac_Num (Number_Contac_Pac)
VALUES
  ("241-8787"),
  ("245-4247"),
  ("277-6535"),
  ("853-8081"),
  ("667-9826");

INSERT INTO Paciente_Contac (ID_Contac_Pac,Etiqueta_Contac_Pac)
VALUES
  ("X1L5","pede,"),
  ("D1N8","ultrices"),
  ("M2O5","dolor."),
  ("N5W1","gravida."),
  ("I8M3","adipiscing");


INSERT INTO Paciente (N_CedulaPaciente,N_Seguro_Pac,Nombre_A_Pac,Apellido_A_Pac,Date_Nacimiento_Pac,Email_Pac,Constrasena_Pac,N_CedulaBeneficiario,ID_Contac_Pac)
VALUES
  ("2-3471-6797","1-442-437-1554","Tatiana","Gibson","2020-5-3","tatiana5225@google.com","UQH59PTI3YG","2-1387-1786","X1L5"),
  ("1-7024-2987","1-142-625-2622","Garrett","Buck","2019-9-5","garrett1562@aol.ca","MEH48SVS6CM","8-5165-6468","D1N8"),
  ("6-4864-7147","1-416-664-8446","Uta","Rasmussen","2018-3-23","uta@hotmail.couk","FWL26ANZ6CR","8-2633-5447","M2O5"),
  ("7-7205-2808","1-360-855-8562","Aaron","Harding","2018-9-10","aaron855@google.couk","CPN83IQU4AR","1-2600-7766","N5W1"),
  ("7-7205-2805","1-405-245-5147","Dorothy","Spencer","2020-5-30","dorothy9280@google.ca","QDN07FUI5CM","3-2622-2846","I8M3");

INSERT INTO Especialidad (ID_Especialidad,Nombre_Espec)
VALUES
  ("YOQ87LNF","Medicina General "),
  ("YOQ17LNF","Cardiología"),
  ("KOA32VRP","Pediatría"),
  ("NEH08BKV","Ortopedia"),
  ("VTJ81HLF","Psiquiatría");


INSERT INTO Referencia ( N_Referencia,N_CedulaPaciente,ID_Especialidad,Descripcion_Ref)
VALUES
  ("1220661","6-4864-7147","YOQ87LNF","velit in"),
  ("1619228","2-3471-6797","YOQ17LNF","urna justo faucibus lectus, a sollicitudin orci sem"),
  ("7630622","7-7205-2808","VTJ81HLF","Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis"),
  ("2093768","2-3471-6797","YOQ17LNF","et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui"),
  ("1897125","2-3471-6797","VTJ81HLF","et ultrices posuere cubilia Curae Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue");

INSERT INTO Policlinica_Horario_Dia (ID_Dia_Hor,Nombre_Dia)
VALUES
  ("RTR","Lunes"),
  ("OPG","Martes"),
  ("VXU","Miercoles"),
  ("KGY","Jueves"),
  ("MUY","Viernes"),
  ("DXE","Sabado"),
  ("VFF","Domingp");

INSERT INTO Policlinica_Horario_Hora (ID_Hora_Hor,Horas_Hora)
VALUES
  ("IVV","7:00AM-5:00PM"),
  ("OED","12:00PM-6:0PM");

INSERT INTO Policlinica_Horario (ID_Horario_Polic,ID_Dia_Hor,ID_Hora_Hor)
VALUES
  ("PXN","VXU","OED"),
  ("DTL","RTR","IVV"),
  ("BUT","VXU","OED"),
  ("MEK","RTR","OED"),
  ("HAA","VXU","OED");

INSERT INTO Policlinica_Ubicacion_Provincia (ID_Provincia_Ubic,Name_Ubic)
VALUES
  (10,"PanamaOeste"),
  (7,"LosSantos"),
  (3,"Colon"),
  (8,"Panama"),
  (4,"Chiriqui");

INSERT INTO Policlinica_Ubicacion (ID_Ubicacion,ID_Provincia_Ubic,Descrip_Ubic)
VALUES
  ("Y75j","4","788-5156 Nisi Street"),
  ("U06s","3","Ap #755-3669 Turpis Avenue"),
  ("W28r","10","P.O. Box 285, 548 Sagittis Ave"),
  ("Q80x","7","7465 Egestas. Avenue"),
  ("E42f","8","481-5325 Semper, St.");

INSERT INTO Policlinica (ID_Polic,Nombre_Polic,ID_Horario_Polic,ID_Ubicacion)
VALUES
  ("SKO12","Myles Daugherty","DTL","E42f"),
  ("SUH40","Roth Norton","DTL","W28r"),
  ("SDC41","Eleanor Whitaker","MEK","W28r"),
  ("YKW97","Colt York","PXN","Q80x"),
  ("PJT95","Nathaniel Golden","BUT","Q80x");

INSERT INTO Personal_Roles (ID_Rol_Pers,Nombre_Rol)
VALUES
  ("E0W3","Doctor"),
  ("J9H5","AdministradorTI");

INSERT INTO Personal (ID_Personal,Nombre_Pers,Apellido_Pers,Cedula_Pers,Email_Pers,Contrasena_Pers,ID_Rol_Pers)
VALUES
  ("L2Z7","Demetria","Steele","5-6194-1153","demetria@outlook.couk","THV62JLT8SA","E0W3"),
  ("U5Z0","Raja","Andrews","7-3617-9837","raja@google.edu","NKV75CJT2HU","J9H5"),
  ("N2N3","Amanda","Herring","3-5372-9563","amanda@icloud.edu","RGA65JYT1QF","J9H5"),
  ("C4N2","Oliver","Scott","7-5172-6127","oliver6280@aol.edu","WCZ35DIY1FD","E0W3"),
  ("P8G0","Harrison","Erickson","4-8720-1753","harrison@yahoo.ca","TOO37EHQ4FJ","E0W3");

INSERT INTO Administrador (ID_Personal)
VALUES
  ("U5Z0"),
  ("N2N3");

INSERT INTO Doctor (ID_Doctor,ID_Personal,ID_Polic,ID_Especialidad)
VALUES
  ("37fj","U5Z0","SUH40","YOQ17LNF"),
  ("18ko","P8G0","SKO12","YOQ17LNF"),
  ("50ie","L2Z7","SDC41","NEH08BKV");

INSERT INTO Cita_Estado (ID_Estado_Cita,Nombre_Cita_Est)
VALUES
  (1,"Pendiente"),
  (2,"Confirmada"),
  (3,"Cancelada");

INSERT INTO Cita (ID_Doctor,ID_Especialidad,N_CedulaPaciente,ID_Estado_Cita,Fecha_Cita,Is_Control)
VALUES
  ("50ie","NEH08BKV","2-3471-6797","1","2022-11-17",0),
  ("50ie","NEH08BKV","1-7024-2987","2","2022-7-22",1),
  ("18ko","YOQ17LNF","1-7024-2987","2","2021-11-26",1),
  ("37fj","YOQ17LNF","6-4864-7147","3","2022-8-12",0),
  ("37fj","YOQ17LNF","1-7024-2987","2","2021-5-2",0);