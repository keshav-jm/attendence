import { useEffect, useState } from "react";
import api from "../services/api";
import "../styles/table.css";

function Faculty() {

    const [faculty, setFaculty] = useState([]);

    const [newFaculty, setNewFaculty] = useState({
        name: "",
        email: "",
        password: "",
        department: ""
    });

    useEffect(() => {
        loadFaculty();
    }, []);

    const loadFaculty = async () => {
        const res = await api.get("/faculty");
        setFaculty(res.data);
    };

    const handleChange = (e) => {
        setNewFaculty({
            ...newFaculty,
            [e.target.name]: e.target.value
        });
    };

    const addFaculty = async () => {

        await api.post("/faculty", newFaculty);

        alert("Faculty Added");

        setNewFaculty({
            name: "",
            email: "",
            password: "",
            department: ""
        });

        loadFaculty();

    };

    const deleteFaculty = async(id) => {

        await api.delete(`/faculty/${id}`);

        loadFaculty();

    };

    return (

        <div className="container">

            <h1>Faculty Management</h1>

            <div className="form">

                <input
                    name="name"
                    placeholder="Name"
                    value={newFaculty.name}
                    onChange={handleChange}
                />

                <input
                    name="email"
                    placeholder="Email"
                    value={newFaculty.email}
                    onChange={handleChange}
                />

                <input
                    name="password"
                    placeholder="Password"
                    value={newFaculty.password}
                    onChange={handleChange}
                />

                <input
                    name="department"
                    placeholder="Department"
                    value={newFaculty.department}
                    onChange={handleChange}
                />

                <button onClick={addFaculty}>
                    Add Faculty
                </button>

            </div>

            <table>

                <thead>

                    <tr>

                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Department</th>
                        <th>Action</th>

                    </tr>

                </thead>

                <tbody>

                    {
                        faculty.map((f) => (

                            <tr key={f.facultyId}>

                                <td>{f.facultyId}</td>
                                <td>{f.name}</td>
                                <td>{f.email}</td>
                                <td>{f.department}</td>

                                <td>

                                    <button
                                        className="delete"
                                        onClick={() => deleteFaculty(f.facultyId)}
                                    >
                                        Delete
                                    </button>

                                </td>

                            </tr>

                        ))
                    }

                </tbody>

            </table>

        </div>

    );

}

export default Faculty;