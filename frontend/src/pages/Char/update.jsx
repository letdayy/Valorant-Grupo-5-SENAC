import axios from 'axios';
import React from 'react'
import { useState, useEffect } from 'react'
import { useLocation, useNavigate } from 'react-router-dom';



export default function UpdateChar() {
    const [informacao, setInformacao] = useState([]);
    const [personagem, setPersonagem] = useState({
        name:"",
        realName:"",
        country:"",
        class:"",
        winRate: 0
    });

    const navigate = useNavigate()
    const location = useLocation()
    const personagemId = location.pathname.split("/")[2]

//     useEffect(()=>{
//     async function getPersonagem(){
//         try {
//            const res = await axios.get(`http://localhost:8800/personagens/${personagemId}`);
//            setInformacao(res.data)
//         } catch (error) {
//             console.log(error)
//         }
//     }
//     getPersonagem()
// }, [])
//      console.log(informacao[0])

    const formChange = (e) =>{
        setPersonagem((prev) => ({...prev, [e.target.name]: e.target.value}))
    }

    const formBtnClick = async e =>{
        e.preventDefault()
        try {
           await axios.put(`http://localhost:8800/personagens/${personagemId}`, personagem ) 
            navigate("/character")
        } catch (err) {
            console.log(err)
        }
    }
    return(
        <form>
           <h1>Atualizar Personagem</h1> 
           <input type="text" placeholder="nome" onChange={formChange} name="name"/>
           <input type="text" placeholder="nome verdadeiro" onChange={formChange} name="realName"/>
           <input type="text" placeholder="país" onChange={formChange} name="country"/>
           <input type="text" placeholder="classe" onChange={formChange} name="class"/>
           <input type="number" placeholder="win rate" onChange={formChange} name="winRate"/>
            <button className="formBtn" onClick={formBtnClick}>ATUALIZAR</button>
        </form>
    )
}
