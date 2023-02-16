import React from "react";
import axios from "axios";
import { useState } from 'react'
import { useNavigate } from 'react-router-dom';
import './add.css';

export default function CharAdd() {

    const [personagem, setPersonagem] = useState({
        name:"",
        realName:"",
        country:"",
        class:"",
        winRate: 0
    });

    const navigate = useNavigate()

    function formChange(e){
        setPersonagem((prev) => ({...prev, [e.target.name]: e.target.value}))
    }

    const formBtnClick = async e =>{
        e.preventDefault()
        try {
           await axios.post("http://localhost:8800/personagens", personagem )
            navigate("/Character")
        } catch (err) {
            console.log(err)
        }
    }

    return <div className="add">
    <h1>Adicionar Novo Personagem</h1>
        <form>
            <input type="text" placeholder="Nome" onChange={formChange} name="name"/>
           <input type="text" placeholder="Nome verdadeiro" onChange={formChange} name="realName"/>
           <input type="text" placeholder="País" onChange={formChange} name="country"/>
           <input type="text" placeholder="Classe" onChange={formChange} name="class"/>
           <input type="number" placeholder="Taxa de Vitória" onChange={formChange} name="winRate"/>
            <button onClick={formBtnClick}>ADICIONAR</button>

        </form>
    </div>
}