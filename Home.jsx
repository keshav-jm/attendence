import { useNavigate } from "react-router-dom";
import "../styles/home.css";

function Home() {

    const navigate = useNavigate();

    return (

        <div className="home">

            <div className="home-card">

                <h1>Smart Attendance System</h1>

                <p>
                    Welcome to the Attendance Management Portal
                </p>

                <button
                    onClick={() => navigate("/faculty-login")}
                >
                    Faculty Login
                </button>

                <button
                    onClick={() => navigate("/student-login")}
                >
                    Student Login
                </button>

            </div>

        </div>

    );

}

export default Home;