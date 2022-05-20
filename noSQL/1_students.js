// Entra no banco de dados "aguiaConcursos"
// use aguiaConcursos;

// Cria uma collection "estudantes" e armazena os dados dos estudante
db.estudantes.insertMany([
    {
        "name": "José Roberto da Silva",
        "email": "joseRS@email.com",
        "birthDate": new Date("06/01/1984"),
        "password": "senha123",
        "courseList": [
            {
                "name": "course1",
                "progress": "40%",
                "startDate": new Date("08/14/2019")
            },
            {
                "name": "course2",
                "progress": "60%",
                "startDate": new Date("01/03/2020")
            },
            {
                "name": "course3",
                "progress": "100%",
                "startDate": new Date("02/24/2019")
            }
        ],
        "cpf": "11122233304"
    },
    {
        "name": "Marcelo da Silva Santos",
        "email": "marceloSS@email.com",
        "birthDate": new Date("06/01/1990"),
        "password": "senha",
        "courseList": [
            {
                "name": "course3",
                "progress": "40%",
                "startDate": new Date("03/05/2021")
            },
            {
                "name": "course2",
                "progress": "60%",
                "startDate": new Date("09/01/2020")
            }
        ],
        "cpf": "12647532408"
    },
    {
        "name": "Maria Júlia Alves",
        "email": "majuAlves@email.com",
        "birthDate": new Date("08/13/1999"),
        "password": "pass",
        "courseList": [],
        "cpf": "01245682400"
    },
    {
        "name": "Calebe Tiago Fernando Fernandes",
        "email": "calebetiagofernandes@crsilvadesign.com",
        "birthDate": new Date("01/02/1978"),
        "password": "ANqLUEcr3E",
        "courseList": [
            {
                "name": "course1",
                "progress": "100%",
                "startDate": new Date("08/08/2021")
            },
            {
                "name": "course2",
                "progress": "20%",
                "startDate": new Date("11/07/2020")
            }
        ],
        "cpf": "23863102304"
    },
    {
        "name": "Lucas Gabriel da Rocha",
        "email": "LucasGR@email.com",
        "birthDate": new Date("12/11/2000"),
        "password": "senha",
        "courseList": [
            {
                "name": "course2",
                "progress": "20%",
                "startDate": new Date("04/22/2019")
            },
            {
                "name": "course1",
                "progress": "90%",
                "startDate": new Date("07/30/2020")
            }
        ],
        "cpf": "10024547806"
    },
    {
        "name": "Fabyo Henriquie de Melo",
        "email": "fabyoHM@email.com",
        "birthDate": new Date("02/27/1997"),
        "password": "senha",
        "courseList": [
            {
                "name": "course4",
                "progress": "40%",
                "startDate": new Date("12/11/2019")
            },
            {
                "name": "course5",
                "progress": "100%",
                "startDate": new Date("03/24/2020")
            }
        ],
        "cpf": "12647532408"
    },
    {
        "name": "Pedro Leonardo de Sousa",
        "email": "pedroLS@email.com",
        "birthDate": new Date("07/15/2001"),
        "password": "senha",
        "courseList": [
            {
                "name": "course2",
                "progress": "100%",
                "startDate": new Date("08/11/2020")
            },
            {
                "name": "course5",
                "progress": "0%",
                "startDate": new Date("04/24/2022")
            }
        ],
        "cpf": "14725836904"  
    },
    {
        "name": "Matheus Melo Machado",
        "email": "matheusMM@email.com",
        "birthDate": new Date("05/28/2000"),
        "password": "senha",
        "courseList": [
            {
                "name": "course1",
                "progress": "100%",
                "startDate": new Date("08/14/2019")
            },
            {
                "name": "course4",
                "progress": "100%",
                "startDate": new Date("03/21/2020")
            }
        ],
        "cpf": "15935745608"
    },
    {
        "name": "Luana Lopes Machado",
        "email": "LuanaLM@email.com",
        "birthDate": new Date("11/20/1999"),
        "password": "senha",
        "courseList": [
            {
                "name": "course2",
                "progress": "100%",
                "startDate": new Date("04/20/2021"),
            },
        ],
        "cpf": "12378954600"
    },
    {
        "name": "Anna Beatriz Castro",
        "email": "annaBC@email.com",
        "birthDate": new Date("02/27/1989"),
        "password": "2b0dfb4389a743e54fb7706ff6f885a9",
        "courseList": [
            {
                "name": "course3",
                "progress": "40%",
                "startDate": new Date("06/14/2021")
            },
            {
                "name": "course4",
                "progress": "10%",
                "startDate": new Date("05/01/2022")
            },
        ],
        "cpf": "96335741032"
    }
]);
