import express from "express";
import mysql from "mysql";

const app = express()
app.use(express.urlencoded({extended:true}));


const db = mysql.createConnection({
    host: "localhost",
    user:"root",
    password:"",
    database:"valorant" //nome do banco de dados
});

//código que faz a conexão com o banco de dados

app.use(express.json());

app.get("/", (req, res) =>{
    res.json("Oi, este é o backend")
});

//Selecionar todos os personagens do banco de dados
app.get("/characters", (req, res) =>{
    const q = "SELECT * FROM characters" //characters é o nome da tabela.
    db.query(q,(err, data) => {
        if(err) return res.json(err)
        return res.json(data)
    })
})

//CRIAR UM PERSONAGEM NO BANCO
app.post("/characters", (req,res)=>{
    const q = "INSERT INTO characters (`name`, `realName`, `country`, `class`, `winRate`) VALUES (?)"
    const values = [
        req.body.name,
        req.body.realName,
        req.body.country,
        req.body.class,
        req.body.winRate
    ]

    db.query(q,[values], (err,data)=>{
        if(err) return res.json(err)
        return res.json({message: "Personagem criado com sucesso", Personagem: values})
    })
})


//DELETAR UM PERSONAGEM DO BANCO
app.delete("/characters/:id", (req, res)=>{
    const charactersId = req.params.id;
    const q = "DELETE FROM characters  WHERE id = ?"

    db.query(q,[charactersId], (err,data)=>{
        if(err) return res.json(err)
        return res.json("Deletado com sucesso!")
    })
})

//ATUALIZAR UM PERSONAGEM NO BANCO
app.put("/characters/:id", (req, res)=>{
    const charactersId = req.params.id;
    const q = "UPDATE characters SET `name` = ?, `realName`= ?, `country`= ?, `class`= ?, `winRate` = ? WHERE id = ?"

    const values = [
        req.body.name,
        req.body.realName,
        req.body.country,
        req.body.class,
        req.body.winRate
    ]
    db.query(q,[...values,charactersId], (err,data)=>{
        if(err) return res.json(err)
        return res.json("Atualizado com sucesso!")
    })
})

//SELECIONAR TODAS AS SKINS NO BANCO DE DADOS
app.get("/skins", (req, res) =>{
    const q = "SELECT * FROM skins" //skins é o nome da tabela.
    db.query(q,(err, data) => {
        if(err) return res.json(err)
        return res.json(data)
    })
})

//CRIAR UMA SKIN NO BANCO
app.post("/skins", (req,res)=>{
    const q = "INSERT INTO skins (`name`, `edition`, `collection`, `weapon`, `price`) VALUES (?)"
    const values = [
        req.body.name,
        req.body.edition,
        req.body.collection,
        req.body.weapon,
        req.body.price
    ]

    db.query(q,[values], (err,data)=>{
        if(err) return res.json(err)
        return res.json({message: "Skin criada com sucesso", Skin: values})
    })
})


//DELETAR UMA SKIN DO BANCO
app.delete("/skins/:id", (req, res)=>{
    const skinsId = req.params.id;
    const q = "DELETE FROM skins WHERE id = ?"

    db.query(q,[skinsId], (err,data)=>{
        if(err) return res.json(err)
        return res.json("Deletada com sucesso!")
    })
})

//ATUALIZAR UMA SKIN NO BANCO
app.put("/skins/:id", (req, res)=>{
    const skinsId = req.params.id;
    const q = "UPDATE skins SET `name` = ?, `edition`= ?, `collection`= ?, `weapon`= ?, `price` = ? WHERE id = ?"

    const values = [
        req.body.name,
        req.body.edition,
        req.body.collection,
        req.body.weapon,
        req.body.price
    ]
    db.query(q,[...values,skinsId], (err,data)=>{
        if(err) return res.json(err)
        return res.json("Atualizada com sucesso!")
    })
})



app.listen(8800, () => {
    console.log("servidor rodando em: http://localhost:8800")
});
