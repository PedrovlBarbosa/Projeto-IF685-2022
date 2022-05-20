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
db.courses.findOne({
    "address": {
        $ne: null
    }, 
    "URL": {
        $ne: "" 
    } 
})

// [Gte] Devolve os cursos que tem preço acima de 10k
db.courses.find({
    "price": { 
        gte: 10000 
    }
})

// [Exists] Devolve todos os cursos Online
db.courses.find({
    "address.street": {
        $exists: false
    }
})

// [All] Lista todos os cursos que tem monitor disponível em dias úteis
db.courses.find({
    "assistantList.availabilityList.day": { 
        $all: [ 
            "Segunda-feira", 
            "Terça-feira", 
            "Quarta-feira", 
            "Quinta-feira", 
            "Sexta-feira"
        ]
    } 
})

// [Aggregate] [Sum] [Sort] [Group] [Limit] Ordenar os monitores pelas horas trabalhadas
db.courses.aggregate([{
    $unwind: {
        path: '$assistantList',
    }
}, {
    $unwind: {
        path: '$assistantList.availabilityList',
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

// [Match] [Project] Todos os alunos acima de 18 anos
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

// [Function] [Pretty] Devolve uma mensagem do progresso do curso de cada aluno
db.students.aggregate([{
    $project: {
        name: 1,
        message: { 
            $function:
            {
                lang: "js",
                args: ["$name", "$courseList"],
                body: function (name, courseList) {
                    let total = 0;
                    courseList.forEach(course => {
                        if (course.progress === "100%")
                            total += 1;
                    });
                    if (total === 0) {
                        return `Ola ${name}. Você não concluiu nenhum curso.`;
                    }
                    return `Ola ${name}. Você concluiu ${total} curso(s).`;
                }
            }
        }
    }
}]).pretty();

// [Filter] [Cond] O nome do aluno e os cursos que o mesmo não terminou
db.students.aggregate([
    {
        $project: { 
            name: "$name",
            course: {
                $filter: {
                    input: "$courseList",
                    as: "course",
                    cond: {
                        $ne: ["$$course.progress", "100%"] 
                    }
                }
            }
        }  
    },
    {
        $match: {
            course: {
                $gt: {
                    $size: 0
                }
            }
        }
    }
]).pretty()

// [Count] Quantidade de professores em cada curso
db.courses.aggregate([
    {
        $unwind: {
            path: '$teacherList'
        }
   }, 
   {
        $group: {
            _id: '$name',
            teacherCount: {
                $count: {}
            }
        }
    }
]);

// [Avg] A média do preço dos cursos
db.courses.aggregate([{
    $group: {
        _id:null, 
        mediaDosPrecos: {
            $avg:"$price"
        }
    } 
}])

// [Lookup] Une os cursos aos estudantes de acordo com o nome do curso
db.students.aggregate([
    {
        $lookup: {
            from: "courses",
            localField: "courseList.name",
            foreignField: "name",
            as: "Courses"
        }
    }
]);

// [Search] [Text] Procura algum curso voltado para Pernambuco
db.courses.createIndex( { targetContests: "text" } )
db.courses.find({ $text: { $search: "Pernambuco" }})

// [MapReduce] [Max] O preço máximo de cada curso
var mapFunction1 = function() {
    emit(this.name, this.price) 
}
var reduceFunction1 = function(key, prices) {
    return Math.max(prices) 
}
db.courses.mapReduce(
    mapFunction1, 
    reduceFunction1,
    { out: "map_reduce_function_1" }
)  
db.courses.map_reduce_function_1.find()
