// [Find] Devolve todos os alunos que terminaram todos os cursos 
db.students.find({
    "courseList": {
        $not: {
            $elemMatch: {
                "progress": {
                    $ne: "100%"
                }
            }
        }
    }
})

// [FindOne] Devolve um curso que é híbrido (Online e presencial)
db.students.findOne({
    "address": {
        $ne: null 
    }, 
    "URL": {
        $ne: "" 
    } 
})

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

// [Aggregate] [Sum] [Sort] [Group] [Limit] Ordenar os monitores pelas horas trabalhadas
db.students.aggregate([{
    $unwind: {
        path: '$assistantList'
    }
}, {
    $unwind: {
        path: '$assistantList.availabilityList'
    }
}, {
    $group: {
        _id: '$assistantList.name',
        hours: {
            $sum: '$assistantList.availabilityList.durationInMinutes'
        }
    }
}, {
    $sort: {
        hours: -1
    }
}, {
    $limit: 3
}])

// [Match] [Project] [Gte] Todos os alunos acima de 18 anos

db.students.aggregate([{
    $project: {
        name: 1,
        age: {
            $floor: {
                $divide: [{
                        $subtract: [
                            "$$NOW",
                            "$birthDate"
                        ]
                    },
                    60 * 60 * 24 * 30 * 12 * 1000
                ]
            }
        }
    }
},
{
    $match: {
        age: {
            $gte: 18
        }
    }
}]).pretty()