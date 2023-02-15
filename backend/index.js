import express from "express";
import mysql from "mysql";
import cors from 'cors';

const app = express()



const db = mysql.createConnection({
    host: "localhost",
    user:"root",
    password:"",
    database:"valorant" //nome do banco de dados
});

//código que faz a conexão com o banco de dados

app.use(express.json());
app.use(express.urlencoded({extended:true}));
app.use(cors());

app.get("/", (req, res) =>{
    res.json("Oi, este é o backend")
});

//Selecionar todas as habilidades do banco de dados
app.get("/habilidades", (req, res) =>{
    const q = "SELECT * FROM habilidades" //habilidades é o nome da tabela.
    db.query(q,(err, data) => {
        if(err) return res.json(err)
        return res.json(data)
    })
})

//SELECIONAR TODAS OS PERSONAGENS NO BANCO DE DADOS
app.get("/personagens", (req, res) =>{
    const q = "SELECT * FROM personagens" //personagens é o nome da tabela.
    db.query(q,(err, data) => {
        if(err) return res.json(err)
        return res.json(data)
    })
})

//CRIAR UM PERSONAGEM NO BANCO
app.post("/personagens", (req,res)=>{
    const q = "INSERT INTO personagens (`name`, `realName`, `country`, `class`, `winRate`) VALUES (?)"
    const values = [
        req.body.name,
        req.body.realName,
        req.body.country,
        req.body.class,
        req.body.winRate
    ]
    })  


    //DELETAR UM PERSONAGEM DO BANCO
app.delete("/personagens/:id", (req, res)=>{
    const personagensId = req.params.id;
    const q = "DELETE FROM personagens WHERE id = ?"

    db.query(q,[personagensId], (err,data)=>{
        if(err) return res.json(err)
        return res.json("Deletada com sucesso!")
    })
})
//CRIAR UMA HABILIDADE NO BANCO

app.post("/habilidades", (req,res)=>{
    const q = "INSERT INTO habilidades (`id`, `Displacement`, `Habilidade`, `Max_carregamento`, `Custo`, `Funcoes`) VALUES (?)"
    const values = [
        req.body.id,
        req.body.Displacement,
        req.body.Habilidade,
        req.body.Agente,
        req.body.Max_carregamento,
        req.body.Custo,
        req.body.Funcoes,
    ]

    db.query(q,[values], (err,data)=>{
        if(err) return res.json(err)
        return res.json({message: "Personagem criado com sucesso", Personagem: values})
    })
})


//DELETAR UMA HABILIDADE DO BANCO
app.delete("/habilidades/:id", (req, res)=>{
    const habilidadesId = req.params.id;
    const q = "DELETE FROM habilidades  WHERE id = ?"

    db.query(q,[personagensId], (err,data)=>{
        if(err) return res.json(err)
        return res.json("Deletado com sucesso!")
    })
})

//ATUALIZAR UM PERSONAGEM NO BANCO
app.put("/personagens/:id", (req, res)=>{
    const personagensId = req.params.id;
    const q = "UPDATE personagens SET `name` = ?, `realName`= ?, `country`= ?, `class`= ?, `winRate` = ? WHERE id = ?"

    const values = [
        req.body.name,
        req.body.realName,
        req.body.country,
        req.body.class,
        req.body.winRate
    ]
})
//ATUALIZAR UMA HABILIDADE NO BANCO
app.put("/habilidades/:id", (req, res)=>{
    const habilidadesId = req.params.id;
    const q = "UPDATE habilidades SET `Displacement` = ?, `habilidade`= ?, `Agente`= ?, `Max_carregamento`= ?,`Custo`= ? `Funcoes`= ? WHERE id = ?"

    const values = [
        req.body.id,
        req.body.Displacement,
        req.body.Habilidade,
        req.body.Agente,
        req.body.Max_carregamento,
        req.body.Custo,
        req.body.Funcoes,
    ]
    db.query(q,[...values,habilidadesId], (err,data)=>{
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

//Selecionar todos os mapas do banco de dados
app.get("/mapas", (req, res) =>{
    const q = "SELECT * FROM mapas"
    db.query(q,(err, data) => {
        if(err) return res.json(err)
        return res.json(data)
    })
})

//CRIAR UM MAPA NO BANCO
app.post("/mapas", (req,res)=>{
    const q = "INSERT INTO personagens (`mapa`, `local`, `curiosidade`) VALUES (?)"
    const values = [
        req.body.mapa,
        req.body.local,
        req.body.curiosidade
    ]

    db.query(q,[values], (err,data)=>{
        if(err) return res.json(err)
        return res.json({message: "Mapa criado com sucesso", Mapa: values})
    })
})


//DELETAR UM MAPA DO BANCO
app.delete("/mapas/:id", (req, res)=>{
    const mapasId = req.params.id;
    const q = "DELETE FROM mapas  WHERE id = ?"

    db.query(q,[mapasId], (err,data)=>{
        if(err) return res.json(err)
        return res.json("Deletado com sucesso!")
    })
})

//ATUALIZAR UM MAPA NO BANCO
app.put("/mapas/:id", (req, res)=>{
    const mapasId = req.params.id;
    const q = "UPDATE mapas SET `mapa` = ?, `local`= ?, `curiosidade`= ?"

    const values = [
        req.body.mapa,
        req.body.local,
        req.body.curiosidade
    ]
    db.query(q,[...values,mapasId], (err,data)=>{
        if(err) return res.json(err)
        return res.json("Atualizado com sucesso!")
    })
})

app.listen(8800, () => {
    console.log("servidor rodando em: http://localhost:8800")
});

