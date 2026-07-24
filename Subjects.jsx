import { useEffect, useState } from "react";
import api from "../services/api";
import "../styles/table.css";

function Subjects() {

    const [subjects, setSubjects] = useState([]);

    const [subject, setSubject] = useState({
        subjectName: "",
        subjectCode: "",
        department: "",
        semester: ""
    });

    useEffect(() => {
        loadSubjects();
    }, []);

    const loadSubjects = async () => {
        const res = await api.get("/subject");
        setSubjects(res.data);
    };

    const handleChange = (e) => {
        setSubject({
            ...subject,
            [e.target.name]: e.target.value
        });
    };

    const addSubject = async () => {

        await api.post("/subject", subject);

        alert("Subject Added");

        setSubject({
            subjectName: "",
            subjectCode: "",
            department: "",
            semester: ""
        });

        loadSubjects();

    };

    const deleteSubject = async(id)=>{

        await api.delete(`/subject/${id}`);

        loadSubjects();

    };

    return (

        <div className="container">

            <h1>Subjects</h1>

            <div className="form">

                <input
                    name="subjectName"
                    placeholder="Subject Name"
                    value={subject.subjectName}
                    onChange={handleChange}
                />

                <input
                    name="subjectCode"
                    placeholder="Subject Code"
                    value={subject.subjectCode}
                    onChange={handleChange}
                />

                <input
                    name="department"
                    placeholder="Department"
                    value={subject.department}
                    onChange={handleChange}
                />

                <input
                    name="semester"
                    placeholder="Semester"
                    value={subject.semester}
                    onChange={handleChange}
                />

                <button onClick={addSubject}>
                    Add Subject
                </button>

            </div>

            <table>

                <thead>

                    <tr>

                        <th>ID</th>
                        <th>Name</th>
                        <th>Code</th>
                        <th>Action</th>

                    </tr>

                </thead>

                <tbody>

                    {
                        subjects.map((s)=>(

                            <tr key={s.subjectId}>

                                <td>{s.subjectId}</td>
                                <td>{s.subjectName}</td>
                                <td>{s.subjectCode}</td>

                                <td>

                                    <button
                                    className="delete"
                                    onClick={()=>deleteSubject(s.subjectId)}
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

export default Subjects;