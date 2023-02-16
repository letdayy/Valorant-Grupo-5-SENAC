// import React from 'react';
// import './Habilities.css';
// import axios from 'axios';
// import { useEffect, useState} from 'react';
// import { Link } from 'react-router-dom';

// export default function Abilities() {
//     const [Hab,setHabilidades] = useState([])

//     useEffect(()=>{
//         const fetchAllHabilidades = async ()=>{
//             try{
//                 const res = await axios.get("http://localhost:8800/habilidades")
//                 sethabilidades(res.data);

//             }catch(err){
//                 console.log(err)
//             }
//         }
//         fetchAllhabilidades()
//     }, [])


//     const delhabilidades = async (id)=>{
//         try {
//             await axios.delete("http://localhost:8800/habilidades/"+id)
//             window.location.reload()
//         } catch (err) {
//             console.log(err)
            
//         }
//     }


//     return <div className='painel'>
//         <div className='principal'>
//         <h1>
//             Habilidades
//         </h1>

//         <button>
//             <Link to="/HabAdd" >
//             +
//             </Link>
//         </button>

//         </div>

//         <div className='main'>

//             {Habilidades.map((habilidade) => (
//                 <div className="habilidade" key={habilidades.habilidade}>
//                 <h2>
//                 {habilidades.agente}
//             </h2>
//             <ul>
//                 <li>
//                     Habilidade: {personagem.realName}
//                 </li>
//                 <li>
//                     Carregamento máximo: {habilidades.Max_carregamento}
//                 </li>
//                 <li>
//                     Agente: {habilidades.agente}
//                 </li>
//                 <li>
//                     Funções: {habilidades.Funcoes}
//                 </li>
//             </ul>
//             <div className='button'>
//             <button className='deleteButton' onClick={()=>delHabilidade(Habilidades.habilidade)}>Deletar</button>
//             <button className='updateButton'>Atualizar</button>
//             </div>
//         </div>
//             ))}

        

//         </div>
//     </div>
// }