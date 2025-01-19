
CREATE TABLE autores (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE cursos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    categoria VARCHAR(255) NOT NULL
);

CREATE TABLE topicos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    mensagem TEXT NOT NULL,
    data_criacao DATETIME NOT NULL,
    status VARCHAR(50) NOT NULL,
    autor_id BIGINT NOT NULL,
    curso_id BIGINT NOT NULL,

    FOREIGN KEY (autor_id) REFERENCES autores(id),
    FOREIGN KEY (curso_id) REFERENCES cursos(id)
);

CREATE TABLE respostas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    solucao TEXT,
    topico_id BIGINT NOT NULL,
    data_criacao DATETIME NOT NULL,
    autor_id BIGINT NOT NULL,

    FOREIGN KEY (topico_id) REFERENCES topicos(id),
    FOREIGN KEY (autor_id) REFERENCES autores(id)
);

CREATE TABLE usuarios(
    id BIGINT NOT NULL AUTO_INCREMENT,
    login VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,

    PRIMARY KEY(id)
);