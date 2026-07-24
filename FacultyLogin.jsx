import { useState } from "react";
import { useNavigate } from "react-router-dom";
import api from "../services/api";
import "../styles/login.css";

function FacultyLogin() {

    const navigate = useNavigate();

    const [email, setEmail] = useState("");
    const [password, setPassword] = useState("");

    const login = async () => {

        try {

            const response = await api.post("/faculty/login", {

                email: email,
                password: password

            });

            if(response.data){

                alert("Login Successful");

                navigate("/faculty-dashboard");

            }

        }

        catch(error){

            alert("Invalid Email or Password");

        }

    };

    return(

        <div className="login-page">

            <div className="login-box">

                <h2>Faculty Login</h2>

                <input
                    type="email"
                    placeholder="Email"
                    onChange={(e)=>setEmail(e.target.value)}
                />

                <input
                    type="password"
                    placeholder="Password"
                    onChange={(e)=>setPassword(e.target.value)}
                />

                <button onClick={login}>
                    Login
                </button>

            </div>

        </div>

    );

}

export default FacultyLogin;