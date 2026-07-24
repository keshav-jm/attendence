import { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import api from "../services/api";
import "../styles/dashboard.css";

function StudentDashboard() {

    const student = JSON.parse(localStorage.getItem("student"));

    const [attendance, setAttendance] = useState([]);

    useEffect(() => {

        if (student) {
            loadAttendance();
        }

    }, []);

    const loadAttendance = async () => {

        try {

            const res = await api.get("/attendance");

            const myAttendance = res.data.filter(
                (a) =>
                    a.student &&
                    a.student.studentId === student.studentId
            );

            setAttendance(myAttendance);

        } catch (error) {

            console.log(error);

        }

    };

    return (

        <div className="dashboard">

            <div className="sidebar">

                <h2>Student Panel</h2>

                <ul>

                    <li>
                        <Link to="/student-dashboard">Dashboard</Link>
                    </li>

                    <li>
                        <Link to="/myattendance">My Attendance</Link>
                    </li>

                </ul>

            </div>

            <div className="content">

                <h1>Welcome {student?.name}</h1>

                <div className="cards">

                    <div className="card">
                        <h3>Roll Number</h3>
                        <p>{student?.rollNo}</p>
                    </div>

                    <div className="card">
                        <h3>Email</h3>
                        <p>{student?.email}</p>
                    </div>

                    <div className="card">
                        <h3>Department</h3>
                        <p>{student?.department}</p>
                    </div>

                    <div className="card">
                        <h3>Year</h3>
                        <p>{student?.year}</p>
                    </div>

                    <div className="card">
                        <h3>Semester</h3>
                        <p>{student?.semester}</p>
                    </div>

                    <div className="card">
                        <h3>Subjects</h3>
                        <p>{student?.subjects ? student.subjects.length : 0}</p>
                    </div>

                </div>

                <br />

                <h2>My Attendance</h2>

                <table>

                    <thead>

                        <tr>
                            <th>Subject</th>
                            <th>Total Classes</th>
                            <th>Attended Classes</th>
                            <th>Attendance %</th>
                            <th>Last Updated</th>
                        </tr>

                    </thead>

                    <tbody>

                        {attendance.length > 0 ? (

                            attendance.map((a) => (

                                <tr key={a.attendanceId}>

                                    <td>{a.subject ? a.subject.subjectName : "-"}</td>

                                    <td>{a.totalClasses}</td>

                                    <td>{a.attendedClasses}</td>

                                    <td>{a.attendancePercentage}%</td>

                                    <td>{a.lastUpdated}</td>

                                </tr>

                            ))

                        ) : (

                            <tr>

                                <td colSpan="5" style={{ textAlign: "center" }}>
                                    No Attendance Found
                                </td>

                            </tr>

                        )}

                    </tbody>

                </table>

            </div>

        </div>

    );

}

export default StudentDashboard;