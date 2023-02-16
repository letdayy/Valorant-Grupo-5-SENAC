/* eslint-disable jsx-a11y/alt-text */
import React from 'react';
import axios from 'axios';
import { useEffect, useState} from 'react';
// import { Link } from 'react-router-dom';

export default function Habilities() {
        const [habilidades,setHabilities] = useState([])

        useEffect(()=>{
            const fetchAllHabilities = async ()=>{
                try{
                    const res = await axios.get("http://localhost:8800/habilidades")
                    setHabilities(res.data);

                }catch(err){
                    console.log(err)
                }
            }
            fetchAllHabilities()
        }, [])





    return <div className='painel'>
        <div className='principal'>
            <h1>
                Habilidades
            </h1>

            <button>
                +
            </button>

        </div>

        <div className='main'>

            {habilidades.map((habilidade) => (
            <div className="personagem" key={habilidade.id}>
                <h2>
                    {habilidade.Displacement}
                </h2>
                <ul>
                    <li>
                        Habilidade: {habilidade.Habilidade}
                    </li>
                    <li>
                        Carregamento máximo: {habilidade.Max_carregamento}
                    </li>
                    <li>
                        Agente: {habilidade.Agente}
                    </li>
                    <li>
                        Funções: {habilidade.Funcoes}
                    </li>
                    <li>
                        Custo: {habilidade.Custo}
                    </li>
                </ul>
                <div className='button'>
                    <button className='deleteButton' >Deletar</button>
                    <button className='updateButton'>Atualizar</button>
                </div>
            </div>
            ))}



            

        </div>
    </div>
}