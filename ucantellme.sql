CREATE TABLE ´estudiantes´ (
    ´id´ INTEGER PRIMARY KEY,
    ´num_doc´ INTEGER,
    ´nombre´ TEXT,
    ´edad´ INTEGER,
    ´grado´ INTEGER,
    ´grupo´ INTEGER,
    ´correo´ TEXT
);

CREATE TABLE ´psicologos´ (
    ´id´ INTEGER PRIMARY KEY,
    ´num_doc´ INTEGER,
    ´nombre´ TEXT,
    ´correo´ TEXT
);

CREATE TABLE ´citas´ (
    ´cita_id´ INTEGER PRIMARY KEY,
    ´fecha´ DATE,
    ´duracion´ INTEGER,
    ´hora´ TIME,
    ´estado´ TEXT DEFAULT 'pendiente',  -- Campo para indicar si la cita está pendiente o confirmada
    ´estudiante_id´ INTEGER,
    ´psicologo_id´ INTEGER,
    FOREIGN KEY (´estudiante_id´) REFERENCES ´estudiantes´(´id´),
    FOREIGN KEY (´psicologo_id´) REFERENCES ´psicologos´(´id´)
);
