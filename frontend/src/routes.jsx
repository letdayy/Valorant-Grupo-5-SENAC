import {BrowserRouter as Router, Routes, Route} from 'react-router-dom';
import Home from './pages/Home';
import NoPage from './pages/NoPage';
import Character from './pages/Char/character';
import CharAdd from './pages/Char/add';
import UpdateChar from './pages/Char/update';

export default function AppRouter() {
    return (
        <Router>
            <Routes>
                <Route path='/' element={<Home />} />
                <Route path="*" element={<NoPage />} />
                <Route path="/Character" element={<Character />} />
                <Route path="/CharAdd" element={<CharAdd />} />
                <Route path='/UpdateChar/:id' element={<UpdateChar />} />
            </Routes>
        </Router>
    );
}