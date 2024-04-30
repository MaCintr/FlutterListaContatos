import 'package:flutter/material.dart';

class Contato {
  String nome;
  String email;
  Contato(this.nome, this.email); 
}

List<Contato> contatos = [
  Contato('Marcelo Cintra', 'marcelo@email.com'),
  Contato('Matheus Pazikas', 'matheus@email.com'),
  Contato('Sidnei Gastrite', 'sidnei@email.com'),
  Contato('Alceu Dispor', 'alceu@email.com'),
  Contato('Fujiro Nakombi', 'fujiro@email.com'),
];

