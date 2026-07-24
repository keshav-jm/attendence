import { useEffect, useState } from "react";
import api from "../services/api";
import "../styles/table.css";

function Attendance() {

    const [attendance, setAttendance] = useState([]);

    const [record, setRecord] = useState({
        studentId: "",
        subjectId: "",
        attendancePercentage: "",
        totalClasses: "",
        attendedClasses: "",
        lastUpdated: ""
    });

    useEffect(() => {
        loadAttendance();
    }, []);

    const loadAttendance = async () => {
        const res = await api.get("/attendance");
        setAttendance(res.data);
    };

    const handleChange = (e) => {
        setRecord({
            ...record,
            [e.target.name]: e.target.value
        });
    };

    const addAttendance = async () => {

        const data = {
            student: {
                studentId: Number(record.studentId)
            },
            subject: {
                subjectId: Number(record.subjectId)
            },
            attendancePercentage: Number(record.attendancePercentage),
            totalClasses: Number(record.totalClasses),
            attendedClasses: Number(record.attendedClasses),
            lastUpdated: record.lastUpdated
        };

        await api.post("/attendance", data);

        alert("Attendance Saved");

        setRecord({
            studentId: "",
            subjectId: "",
            attendancePercentage: "",
            totalClasses: "",
            attendedClasses: "",
            lastUpdated: ""
        });

        loadAttendance();
    };

    const deleteAttendance = async (id) => {

        await api.delete(`/attendance/${id}`);

        loadAttendance();

    };

    return (

        <div className="container">

            <h1>Attendance</h1>

            <div className="form">

                <input
                    name="studentId"
                    placeholder="Student ID"
                    value={record.studentId}
                    onChange={handleChange}
                />

                <input
                    name="subjectId"
                    placeholder="Subject ID"
                    value={record.subjectId}
                    onChange={handleChange}
                />

                <input
                    name="attendancePercentage"
                    placeholder="Attendance Percentage"
                    value={record.attendancePercentage}
                    onChange={handleChange}
                />

                <input
                    name="totalClasses"
                    placeholder="Total Classes"
                    value={record.totalClasses}
                    onChange={handleChange}
                />

                <input
                    name="attendedClasses"
                    placeholder="Attended Classes"
                    value={record.attendedClasses}
                    onChange={handleChange}
                />

                <input
                    type="date"
                    name="lastUpdated"
                    value={record.lastUpdated}
                    onChange={handleChange}
                />

                <button onClick={addAttendance}>
                    Save Attendance
                </button>

            </div>

            <table>

                <thead>

                    <tr>

                        <th>ID</th>
                        <th>Student ID</th>
                        <th>Subject ID</th>
                        <th>Attendance %</th>
                        <th>Total Classes</th>
                        <th>Attended Classes</th>
                        <th>Last Updated</th>
                        <th>Action</th>

                    </tr>

                </thead>

                <tbody>

                    {attendance.map((a) => (

                        <tr key={a.attendanceId}>

                            <td>{a.attendanceId}</td>

                            <td>{a.student?.studentId}</td>

                            <td>{a.subject?.subjectId}</td>

                            <td>{a.attendancePercentage}</td>

                            <td>{a.totalClasses}</td>

                            <td>{a.attendedClasses}</td>

                            <td>{a.lastUpdated}</td>

                            <td>

                                <button
                                    className="delete"
                                    onClick={() => deleteAttendance(a.attendanceId)}
                                >
                                    Delete
                                </button>

                            </td>

                        </tr>

                    ))}

                </tbody>

            </table>

        </div>

    );
}

export default Attendance;