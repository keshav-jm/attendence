import { useEffect, useState } from "react";
import api from "../services/api";
import "../styles/dashboard.css";
import { Link } from "react-router-dom";

function FacultyDashboard() {

    const [students, setStudents] = useState(0);
    const [faculty, setFaculty] = useState(0);
    const [subjects, setSubjects] = useState(0);
    const [attendance, setAttendance] = useState(0);

    useEffect(() => {

        loadCounts();

    }, []);

    const loadCounts = async () => {

        try {

            const studentRes = await api.get("/student/count");
console.log("Students:", studentRes.data);

const facultyRes = await api.get("/faculty/count");
console.log("Faculty:", facultyRes.data);

const subjectRes = await api.get("/subjects/count");
console.log("Subjects:", subjectRes.data);

const attendanceRes = await api.get("/attendance/count");
console.log("Attendance:", attendanceRes.data);

setStudents(studentRes.data);
setFaculty(facultyRes.data);
setSubjects(subjectRes.data);
setAttendance(attendanceRes.data);

        } catch (error) {
            console.log(error);
        }

    };

    return (
        

        <div className="dashboard">

            <div className="sidebar">

                <h2>Faculty Panel</h2>


                <ul>

    <li>
        <Link to="/faculty-dashboard">Dashboard</Link>
    </li>

    <li>
        <Link to="/students">Students</Link>
    </li>

    <li>
        <Link to="/faculty">Faculty</Link>
    </li>

    <li>
        <Link to="/subjects">Subjects</Link>
    </li>

    <li>
        <Link to="/Attendance">Attendance</Link>
    </li>

</ul>

            </div>

            <div className="main">

                <h1>Faculty Dashboard</h1>

                <div className="cards">

                    <div className="card">
                        <h2>{students}</h2>
                        <p>Total Students</p>
                    </div>

                    <div className="card">
                        <h2>{faculty}</h2>
                        <p>Total Faculty</p>
                    </div>

                    <div className="card">
                        <h2>{subjects}</h2>
                        <p>Total Subjects</p>
                    </div>

                    <div className="card">
                        <h2>{attendance}</h2>
                        <p>Total Attendance</p>
                    </div>

                </div>

            </div>

        </div>

    );
}

export default FacultyDashboard;