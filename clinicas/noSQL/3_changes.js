// [RenameCollection] Renomeia a coleção de estudantes
db.estudantes.renameCollection("students");

// [Where] Verifica se a senha do usuário é igual ao nome
db.students.find({
    $where: function() {
        return hex_md5(this.name) === this.password
    }
}).pretty();

// Remove password field
db.students.update(
    {}, 
    { $unset: {
        password: 1
    } }, 
    { multi: true } 
);

// [Delete] e [Size] Remove os alunos sem nenhum curso
db.students.deleteMany({
    "courseList": {
        $size: 0
    }
})

// [Update] e [Set] Atualiza o nome do curso dos alunos

db.students.updateMany({
    "courseList.name": "course1"
}, {
    $set: {
        "courseList.$.name": "Criptografia de Dados"
    }
})

db.students.updateMany({
    "courseList.name": "course2" 
}, { 
    $set: { 
        "courseList.$.name": "Direito Penal" 
    } 
})

// [AddToSet] Adiciona um novo curso ao alunos
db.students.updateOne({
    "name": "Marcelo da Silva Santos"
}, {
    $addToSet: {
        "courseList": {
            "name": "Criptografia de Dados",
            "progress": "0%",
            "startDate": new Date()
        }
    }
})

// [In] Verifica se o aluno está inscrito em 
// algum curso listado e atualiza o nome do curso

db.students.updateMany({
    "courseList.name": {
        $in: ["course3", "course4", "course5"]
}}, {
    $set: {
        "courseList.$.name": "Curso Polícia Federal"
    }
})
