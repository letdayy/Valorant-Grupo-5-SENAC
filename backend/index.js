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

app.get("/characters", (req, res) =>{
    const q = "SELECT * FROM characters" //characters é o nome da tabela.
    db.query(q,(err, data) => {
        if(err) return res.json(err)
        return res.json(data)
    })
})

app.listen(8800, () => {
    console.log("Backend conectado!!!")
});