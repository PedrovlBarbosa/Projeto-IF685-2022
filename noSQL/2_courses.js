// Create courses and inset them in the database

db.courses.insertOne({
    "name": "Criptografia de Dados",
    "description": "Aprender conceitos sobre criptografia e saber como utilizá-la para proteger dados.",
    "durationInMonths": 5,
    "price": 1095.95,
    "URL": "http://aguiaconcursos.com/criptografia+de+dados",
    "address": {
        "street": "Rua Major João Silveira",
        "city": "Recife",
        "state": "Pernambuco"
    },
    "teacherList": [
        {
            "name": "Pedro Kuber Novalho",
            "wage": 2507.05
        }, {
            "name": "Jorge da Silva Ramos Filho",
            "wage": 8202.90
        }, {
            "name": "Vladmir Costa Burgos",
            "wage": 13200.35
        }
    ],
    "classesList": [
        {
            "className": "Tópico 1",
            "teacher": "Vladmir Costa Burgos",
            "Q&A": [
                {
                    "question": "Questão 1",
                    "answer": "V"
                }, {
                    "question": "Questão 2",
                    "answer": "F"
                }, {
                    "question": "Questão 3",
                    "answer": "Pois a criptografia possui vários ramos, não apenas um"
                }, {
                    "question": "Questão 4",
                    "answer": "Depende do tipo de criptografia utilizado",
                }, {
                    "question": "Questão 5",
                    "answer": "Chave assimétrica"
                }, 
            ],
        }, {
            "className": "Tópico 2",
            "teacher": "Jorge da Silva Ramos Filho",
            "Q&A": [
                {
                    "question": "Questão 1",
                    "answer": "F"
                }, {

                }, {
                    "question": "Questão 2",
                    "answer": "V",
                }, {
                    "question": "Questão 3",
                    "answer": "Criptografia avançada para dados multivalorados"
                }, {
                    "question": "Questão 4",
                    "answer": "Utilizando uma função hash"
                }, 
            ],
        }, {
            "className": "Tópico 3",
            "teacher": "Pedro Kuber Novalho",
            "Q&A": [
                {
                    "question": "Questão 1",
                    "answer": "F"
                }, {

                }, {
                    "question": "Questão 2",
                    "answer": "V",
                }, {
                    "question": "Questão 3",
                    "answer": "V",
                }, {
                    "question": "Questão 4",
                    "answer": "V",
                }, {
                    "question": "Questão 5",
                    "answer": "Sim"
                }, 
            ],
        }
    ],
    "targetContests": ["Polícia Federal de Alagoas", "Polícia Rodoviária de Alagoas"],
    "assistantList": [{
            "name": "Pedro Sávio Costa",
            "wage": 0,
            "availabilityList": [
                {
                    "day": "Segunda-feira",
                    "startingHour": "13:00",
                    "durationInMinutes": 30
                },
                {
                    "day": "Terça-feira",
                    "startingHour": "17:00",
                    "durationInMinutes": 45
                },
                {
                    "day": "Quinta-feira",
                    "startingHour": "12:00",
                    "durationInMinutes": 60
                }
            ]
        },
        {
            "name": "Jorge Medeiro Santos",
            "wage": 350,
            "availabilityList": [
                {
                    "day": "Quarta-feira",
                    "startingHour": "15:00",
                    "durationInMinutes": 120
                },
                {
                    "day": "Sexta-feira",
                    "startingHour": "12:00",
                    "durationInMinutes": 240
                },
                {
                    "day": "Sábado",
                    "startingHour": "08:00",
                    "durationInMinutes": 180
                }
            ]
        }
    ]
}); 

db.courses.insertOne({
    "name": "Direito Penal",
    "description": "Entender sobre as leis concernentes ao Direito Penal",
    "durationInMonths": 8,
    "price": 12000.95,
    "URL": "",
    "address": {
        "street": "Rua da Algaroba",
        "city": "São Paulo",
        "state": "SP"
    },
    "teacherList": [
        {
            "name": "João Pedro dos Santos",
            "wage": 5200.95,
        },
        {
            "name": "Robéria Burgos Sá",
            "wage": 9262.62,
        },
        {
            "name": "Haldir Vladniskotv Brakt",
            "wage": 2400.25
        }
    ],
    "classesList": [
        {   
            "teacher": "Robéria Burgos Sá",
            "className": "Filosofia existencial a respeito do Código Penal",
            "Q&A": [
                {
                    "question": "Por que existe o Código Penal?",
                    "answer": "Para regir as punições que devem ser aplicadas áqueles que perturbam a ordem social."
                },
                {
                    "question": "Qual a relação entre Direito Penal e Código Penal?",
                    "answer": "O Direito Penal é a aplicação das leis descritas no Código Penal."
                }
            ]
        },
        {   
            "teacher": "Haldir Vladniskotv Brakt",
            "className": "Direito Penal na prática",
            "Q&A": [
                {
                    "question": "Quanto tempo de prisão recebe aquele que furta um objeto de R$500,00?",
                    "answer": "5 meses e 16 dias, com direito à prisão domiciliar após cumpridos 60% do prazo."
                },
                {
                    "question": "Cite dois exemplos de crimes inafiançáveis.",
                    "answer": "Estupro e sequestro."
                }
            ]
        },
        {   
            "teacher": "João Pedro dos Santos",
            "className": "Tópicos avançados em Direito Penal",
            "Q&A": [
                {
                    "question": "Questão 1",
                    "answer": "V"
                },
                {
                    "question": "Questão 2",
                    "answer": "F"
                },
                {
                    "question": "Questão 3",
                    "answer": "V"
                },
                {
                    "question": "Questão 4",
                    "answer": "V"
                }
            ]
        }
    ],
    "targetContests": [
        "Corpo de Bombeiros Militar de Pernambuco", 
        "Polícia Rodoviária Federal de Tocantins"
    ],
    "assistantList": [
        {
            "name": "Jorge Medeiros Sávio",
            "wage": 125.00,
            "availabilityList": [
                {
                    "day": "Segunda-feira",
                    "startingHour": "10:00",
                    "durationInMinutes": 90
                },
                {
                    "day": "Quarta-feira",
                    "startingHour": "12:00",
                    "durationInMinutes": 240
                }
            ]
        },
        {
            "name": "Pedro Tenório Ávila",
            "wage": 850.00,
            "availabilityList": [
                {
                    "day": "Segunda-feira",
                    "startingHour": "11:00",
                    "durationInMinutes": 300
                },
                {
                    "day": "Terça-feira",
                    "startingHour": "12:00",
                    "durationInMinutes": 240
                },
                {
                    "day": "Quarta-feira",
                    "startingHour": "8:00",
                    "durationInMinutes": 200
                },
                {
                    "day": "Sexta-feira",
                    "startingHour": "8:00",
                    "durationInMinutes": 200
                },
                {
                    "day": "Sábado",
                    "startingHour": "10:00",
                    "durationInMinutes": 100
                }
            ]
        }
    ]
});

db.courses.save({
    "name": "Curso Polícia Federal",
    "description": "Curso completo para concursos da polícia federal",
    "durationInMonths": 4,
    "price": 1500,
    "URL": "http://aguiaconcursos.com.br/policia+federal",
    "address": null,
    "teacherList": [
        {
            "name": "João Paulo Borges Machado",
            "wage": 4300.00
        }, {
            "name": "Veridiano de Sá da Costa",
            "wage": 6300.87
        },
    ],
    "classesList": [
        {
            "teacher": "João Paulo Borges Machado",
            "className": "Definindo as etapas para conseguir aprovação",
            "Q&A": [
                {
                    "question": "Esse curso abrange tudo que é preciso para aprovação nos concursos da polícia federal?",
                    "answer": "Sim"
                }
            ]
        },
        {
            "teacher": "João Paulo Borges Machado",
            "className": "Raciocínio Logico Matemático",
            "Q&A": [
                {
                    "question": "Esse curso abrange tudo que é preciso para aprovação nos concursos da polícia federal?",
                    "answer": "Sim"
                }
            ]
        },
        {
            "teacher": "Veridiano de Sá da Costa",
            "className": "Conceito de Internet e Intrant.Conceitos e modos de utilização de tecnologia e ferramentas",
            "Q&A": [
                {
                    "question": "Quais os principais protocolos da internet?",
                    "answer": "HTTP (acessar páginas Web), FTP (transferir arquivos), SMTP (enviar e-mails), POP3 (recebere-mails), IMAP4 (receber e-mails)."
                },
                {
                    "question": "O que é um protocolo?",
                    "answer": "Protocolo é o conjunto de regras que definem o modo como se dará a comunicação entredispositivos conectados em uma rede."
                }
            ]
        }

    ],
    "targetContests": [
        "Polícia Federal", 
        "Polícia Rodoviária Federal"
    ],
    "assistantList": [
        {
            "name": "Pedro Henrique",
            "wage": 1000,
            "availabilityList": [
                {
                    "day": "Quinta-feira",
                    "startingHour": "09:00",
                    "durationInMinutes": 60
                },
                {
                    "day": "Sexta-feira",
                    "startingHour": "20:00",
                    "durationInMinutes": 60
                }
            ]
        }
    ]
});