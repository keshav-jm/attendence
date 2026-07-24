import { Link } from "react-router-dom";

<div className="sidebar">

    <h2>📘 Smart Attendance</h2>

    <ul>

        <li>
            <Link to="/faculty-dashboard">🏠 Dashboard</Link>
        </li>

        <li>
            <Link to="/students">👨‍🎓 Students</Link>
        </li>

        <li>
            <Link to="/faculty">👨‍🏫 Faculty</Link>
        </li>

        <li>
            <Link to="/subjects">📚 Subjects</Link>
        </li>

        <li>
            <Link to="/attendance">📝 Attendance</Link>
        </li>

        <li>
            <Link to="/">🚪 Logout</Link>
        </li>

    </ul>

</div>