/* eslint-disable jsx-a11y/alt-text */
import './style.css';

export default function Home() {
    return <div className='cards'>
        <h1>
            Personagens
        </h1>
        <div className="card">

            <h2>
                Astra
            </h2>
            <img src="https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt5599d0d810824279/6036ca30ce4a0d12c3ec1dfa/V_AGENTS_587x900_Astra.png" />

            <ul>
                <li>
                    Nome real: Efia Danso
                </li>
                <li>
                    País: Gana
                </li>
                <li>
                    Classe: Controlador
                </li>
            </ul>
        </div>
    </div>
}