-- Criação das tabelas de dimensão

CREATE TABLE Dim_Professor (
    id_professor SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    titulacao VARCHAR(50),
    tempo_casa INTEGER
);

CREATE TABLE Dim_Curso (
    id_curso SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    grau VARCHAR(50),
    turno VARCHAR(20)
);

CREATE TABLE Dim_Disciplina (
    id_disciplina SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    tipo VARCHAR(50),
    carga_horaria_min INTEGER
);

CREATE TABLE Dim_Departamento (
    id_departamento SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    sigla VARCHAR(10),
    campus VARCHAR(100)
);

CREATE TABLE Dim_Tempo (
    id_tempo SERIAL PRIMARY KEY,
    data DATE,
    ano INTEGER,
    semestre INTEGER,
    trimestre INTEGER,
    mes INTEGER,
    dia_da_semana VARCHAR(15)
);

-- Criação da tabela fato

CREATE TABLE Fato_Professor (
    id_fato SERIAL PRIMARY KEY,
    id_professor INTEGER REFERENCES Dim_Professor(id_professor),
    id_departamento INTEGER REFERENCES Dim_Departamento(id_departamento),
    id_disciplina INTEGER REFERENCES Dim_Disciplina(id_disciplina),
    id_curso INTEGER REFERENCES Dim_Curso(id_curso),
    id_tempo INTEGER REFERENCES Dim_Tempo(id_tempo),
    carga_horaria INTEGER,
    qtd_turmas INTEGER,
    semestre INTEGER,
    ano INTEGER
);
