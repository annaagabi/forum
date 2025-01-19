package br.com.alura.forum.domain.autor;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;

public record DadosAutor(Long id, String nome, String email) {

    public DadosAutor(Autor autor){
        this(autor.getId(), autor.getNome(), autor.getEmail());
    }
}
