CREATE TABLE ´pacientes´(
´id´ integuer PRIMARY KEY,
´num_doc´ integuer,
´nombre´ text,
´edad´ integuer,
´grado´ integuer,
´grupo´ integuer,
´correo´ text,
);
--> statement-breakpoint
CREATE TABLE ´psicologos´(
´id´ integuer PRIMARY KEY,
´num_doc´ integuer,
´nombre´ text,
´correo´ text,
);
--> statement-breakpoint
CREATE TABLE ´citas_pendientes´(
´id´ integuer PRIMARY KEY,
´paciente_id´ integuer,
´cumlida´ text,
´psico_id´ integuer,
FOREIGN KEY (´paciente_id´) REFERENCE ´pacientes´ (´id_pacientes´) 
FOREIGN KEY (´psico´_id´) REFERENCE ´psicologos´ (´id_psico´)  
);
--> statement-breakpoint
CREATE TABLE ´citas´(
´cita_id´ integuer ,
´fecha´ integuer,
´duracion´ integuer,
´hora´ integuer,
FOREIGN KEY (´cita_id´) REFERENCE ´citas_pendientes´(´id_citas´)  
 
);