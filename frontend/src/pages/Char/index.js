/* eslint-disable jsx-a11y/alt-text */
import React from 'react';
import './style.css';
import axios from 'axios';
import { useEffect, useState} from 'react';

export default function Home() {
    const [personagens,setPersonagens] = useState([])

    useEffect(()=>{
        const fetchAllPersonagens = async ()=>{
            try{
                const res = await axios.get("http://localhost:8800/personagens")
                setPersonagens(res.data);
                console.log(res.data[0].name);

            }catch(err){
                console.log(err)
            }
        }
        fetchAllPersonagens()
    }, [])





    return <div className='cards'>
        <h1>
            Personagens
        </h1>
        <div className="card">

            {personagens.map((personagem) => (
                <div className="personagem" key={personagem.id}>
                <h2>
                {personagem.name}
            </h2>
            <img src={personagem.img} />

            <ul>
                <li>
                    Nome real: {personagem.realName}
                </li>
                <li>
                    País: {personagem.country}
                </li>
                <li>
                    Classe: {personagem.class}
                </li>
            </ul>
            </div>
            ))}

            
        </div>
    </div>
}