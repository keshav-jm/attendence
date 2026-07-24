import { useEffect, useState } from "react";
import api from "../services/api";
import "../styles/table.css";

function MyAttendance() {

    const [attendance, setAttendance] = useState([]);

    useEffect(() => {
        loadAttendance();
    }, []);

    const loadAttendance = async () => {

        try {

            const studentId = localStorage.getItem("studentId");

            const res = await api.get("/attendance");

            const myAttendance = res.data.filter(
                (a) => a.student && a.student.studentId == studentId
            );

            setAttendance(myAttendance);

        } catch (error) {
            console.log(error);
        }
    };

    return (

        <div className="container">

            <h1>My Attendance</h1>

            <table>

                <thead>

                    <tr>
                        <th>Subject</th>
                        <th>Total Classes</th>
                        <th>Attended</th>
                        <th>Percentage</th>
                        <th>Last Updated</th>
                    </tr>

                </thead>

                <tbody>

                    {attendance.map((a) => (

                        <tr key={a.attendanceId}>

                            <td>{a.subject ? a.subject.subjectName : "-"}</td>

                            <td>{a.totalClasses}</td>

                            <td>{a.attendedClasses}</td>

                            <td>{a.attendancePercentage}%</td>

                            <td>{a.lastUpdated}</td>

                        </tr>

                    ))}

                </tbody>

            </table>

        </div>

    );
}

export default MyAttendance;