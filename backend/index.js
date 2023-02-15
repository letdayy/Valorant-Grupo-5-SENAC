import express from "express";
import mysql from "mysql";

const app = express()

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

//Selecionar todas as habilidades do banco de dados
app.get("/habilidades", (req, res) =>{
    const q = "SELECT * FROM habilidades" //habilidades é o nome da tabela.
    db.query(q,(err, data) => {
        if(err) return res.json(err)
        return res.json(data)
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
        return res.json("Seu livro foi criado com sucesso!")
    })
})


//DELETAR UMA HABILIDADE DO BANCO
app.delete("/habilidades/:id", (req, res)=>{
    const habilidadesId = req.params.id;
    const q = "DELETE FROM habilidades  WHERE id = ?"

    db.query(q,[charactersId], (err,data)=>{
        if(err) return res.json(err)
        return res.json("Deletado com sucesso!")
    })
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



app.listen(8800, () => {
    console.log("Backend conectado!!!")
});
