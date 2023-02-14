import {BrowserRouter as Router, Routes, Route} from 'react-router-dom';
import Home from './pages/Home';
import NoPage from './pages/NoPage';

export default function AppRouter() {
    return (
        <Router>
            <Routes>
                <Route path='/' element={<Home />} />
                <Route path="*" element={<NoPage />} />
            </Routes>
        </Router>
    );
}