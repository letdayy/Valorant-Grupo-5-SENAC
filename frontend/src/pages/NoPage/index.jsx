import './style.css';
import Error from '../../images/error.avif';

export default function NoPage() {
    return <h1>
        <img src={Error} />
    </h1>
}