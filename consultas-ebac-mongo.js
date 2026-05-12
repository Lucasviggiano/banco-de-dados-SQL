// MongoDB (Compass / mongosh)

use("EBAC");

db.alunos.insertMany([
  { nome: "Fábio", nota: 7, curso: "QA" },
  { nome: "Alice", nota: 9, curso: "SQL" },
  { nome: "Mariana", cargo: "Professora", curso: ["QA", "FrontEnd", "MongoDB"] },
  { nome: "João", nota: 7, curso: "QA" },
  { nome: "Paulo", nota: 5, curso: "Dev" },
  { nome: "Maria", nota: 8, curso: "QA" },
  { nome: "José", nota: 4, curso: "SQL" },
  { nome: "Ana", nota: 9, curso: "QA" },
  { nome: "José Pedro", nota: 7, curso: "UX" }
]);

// 1) Todos os dados em ordem alfabética por nome
db.alunos.find({}).sort({ nome: 1 });

// 2) Todos os alunos do curso SQL
db.alunos.find({ curso: "SQL" });

// 3) Todos os alunos com nota >= 6 e do curso QA
db.alunos.find({
  nota: { $gte: 6 },
  curso: "QA"
});

// 4) Todos os alunos que têm "Pedro" no nome (case-insensitive)
db.alunos.find({
  nome: { $regex: "Pedro", $options: "i" }
});
