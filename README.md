# Banco de Dados para Gestão de Condomínios

Este repositório contém a implementação de um **Banco de Dados para Gestão de Condomínios**, desenvolvido como parte das atividades da **Agenda 5** da disciplina **Tecnologia da Informação II** no curso **Técnico em Desenvolvimento de Sistemas**.

O projeto inclui a modelagem conceitual e lógica do banco de dados, além das instruções SQL para a criação das tabelas e relacionamentos necessários.

---

## 📝 Descrição da Atividade

A atividade consiste na criação da estrutura de um banco de dados para uma imobiliária, permitindo o controle dos condomínios e seus respectivos apartamentos, síndicos, proprietários e garagens. A modelagem segue as regras definidas no enunciado da atividade, aplicando corretamente os relacionamentos entre as entidades.

### 📌 Requisitos:

- ✔ Criar uma modelagem conceitual e lógica do banco de dados.
- ✔ Implementar as instruções SQL para a criação das tabelas.
- ✔ Garantir a integridade dos dados com chaves primárias e estrangeiras.
- ✔ Aplicar restrições de domínio, como `ENUM` para valores específicos.

---

## 📂 Estrutura do Repositório

- **`imobiliariajoaodebarro.sql`** → Arquivo contendo as instruções SQL para criação das tabelas e inserção de dados.
- **`Relatorio.pdf`** → Relatório em PDF explicando os principais trechos de código desenvolvidos e como eles atendem às tarefas solicitadas.
- **`screenshots/`** → Pasta contendo todas as capturas de tela do funcionamento do banco de dados.
  - **`Criação do Banco de Dados, Criação da Tabela Síndico e Criação da Tabela Condomínio.png`** → Captura de tela da criação do banco de dados e das tabelas Síndico e Condomínio.
  - **`Criação da Tabela Apartamento e Criação da Tabela Garagem.png`** → Captura de tela da criação das tabelas Apartamento e Garagem.
  - **`Criação da Tabela Proprietário e Criação da Tabela Proprietario_Apartamento.png`** → Captura de tela da criação das tabelas Proprietário e Proprietario_Apartamento.
  - **`Inserção de Dados na Tabela Síndico, Proprietário, Condomínio e Apartamento.png`** → Captura de tela da inserção de dados nas tabelas Síndico, Proprietário, Condomínio e Apartamento.
  - **`Inserção de Dados na Tabela Garagem, Distribuição de Apartamentos, Simulação de Venda e Exclusão de Proprietário.png`** → Captura de tela da inserção de dados na tabela Garagem e das operações de atualização e exclusão.

---

## 🚀 Como Executar

1️⃣ Clone este repositório:

```bash
git clone https://github.com/seu-usuario/gestao-condominios.git
```

2️⃣ Abra o **MySQL Workbench** ou outro SGDB compatível.

3️⃣ Execute o script **`imobiliariajoaodebarro.sql`** para criar o banco de dados e suas tabelas:

```sql
SOURCE caminho/para/imobiliariajoaodebarro.sql;
```

4️⃣ Valide a estrutura do banco de dados consultando as tabelas e seus relacionamentos.

---

## 💡 Tecnologias Utilizadas

- **MySQL**
- **SQL**
- **MySQL Workbench**

---

## 📄 Relatório

O relatório em PDF (**`Relatorio.pdf`**) contém uma explicação detalhada dos códigos SQL desenvolvidos, incluindo:

- A criação do banco de dados e das tabelas.
- As inserções de dados de exemplo.
- As consultas e atualizações realizadas.
- Capturas de tela como evidências do funcionamento do banco de dados.

---

## 📸 Screenshots

Todas as capturas de tela estão disponíveis na pasta **`screenshots/`**, mostrando:

- A criação do banco de dados e das tabelas.
- A inserção de dados.
- As operações de consulta, atualização e exclusão.
